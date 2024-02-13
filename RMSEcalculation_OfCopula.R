library(copula)
library(gofCopula)
library(VineCopula)
library(xlsx)
library(gofCopula)

setwd("/Users/macbook/Downloads")

#Reading the rainfall and temperature data which were converted into uniform distributions,u,v respectively
#indicates rainfall and temperature
readExcel=read.xlsx("uv.xlsx", sheetIndex = 1, header = TRUE)
readExcel

#Inserting into a dataframe
df=as.data.frame(readExcel)
df

#Extracting data from the df
u=df$u
v=df$v

#Column binding the u,v data
x=cbind(u,v)

#Number of replicates
N=2000

#Calculating the Empirical copula
empirical<-pobs(x)

#Manual method to calculate empirical copula
# Step 1: Rank the data in each dimension
rank_u <- rank(x[,1])
rank_v <- rank(x[,2])

# Step 2: Calculate the empirical copula
n <- nrow(x)
empirical <- matrix(0, nrow = n, ncol = 2)

for (i in 1:n) {
  empirical[i, 1] <- sum(rank_u <= rank_u[i]) / (n + 1)
  empirical[i, 2] <- sum(rank_v <= rank_v[i]) / (n + 1)
}

# View the empirical copula
print(empirical)


#Fitting a Frank copula
frank<-gofCopula(frankCopula(), x, N=N,method=c('Sn'), estim.method = c("itau"),ties=FALSE)
fit_frank <- fitCopula(frankCopula(dim = 2,-0.064009), x)
#number of observations in the dataset
n=492
#Generating data from Frank copula
frank_generate <- rCopula(n, frankCopula(fit_frank@family, dim = 2, param = fit_frank@estimate))
RMSE_Frank <- sqrt(mean((empirical - pobs(frank_generate))^2))
print(paste("RMSE:", RMSE_Frank))

#############################################

#Fitting a FGM copula
fgm<-gofCopula(fgmCopula(), x, N=N,method=c('Sn'), estim.method = c("itau"),ties=FALSE)
fit_fgm<- fitCopula(fgmCopula(-0.0319),x)
#number of observations in the dataset
n=492
#Generating data from FGM copula
fgm_generate <- rCopula(n, fgmCopula(dim = 2, param = fit_fgm@estimate))
RMSE_FGM <- sqrt(mean((empirical - pobs(fgm_generate))^2))
print(paste("RMSE:", RMSE_FGM))

#############################################


#Fitting a FGM copula
amh<-gofCopula(amhCopula(), x, N=N,method=c('Sn'), estim.method = c("itau"),ties=FALSE)
fit_amh<- fitCopula(amhCopula(-0.03226),x)
#number of observations in the dataset
n=492
#Generating data from FGM copula
amh_generate <- rCopula(n, amhCopula(dim = 2, param = fit_amh@estimate))
RMSE_AMH <- sqrt(mean((empirical - pobs(amh_generate))^2))
print(paste("RMSE:", RMSE_AMH))


