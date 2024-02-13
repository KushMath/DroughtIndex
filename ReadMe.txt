
Data Files:

NC.mat : rainfall and temperature data for the period of 1981-2021.
index.mat : Constructed 1,3,6,9,12 MSDI and SPI 

Codes of the Workflow:

1) Estimating the marginal distribution of Rainfall 
1.1) RainfallBetaEstimation_Python: 
This code contains parameter estimation for rainfall using Maximum Likelihood Estimate (MLE) in Python.

#duplicate codes
1.2) RainfallBetaEstimation_R: 
This code contains parameter estimation for rainfall using Method of Moments (MOM) in R software.
1.3) RainfallBetaEstimation_Matlab: 
This code contains parameter estimation for rainfall using  MOM in Matlab.
1.4) RainfallParameterEstimation_Python: 
This code contains parameter estimation for rainfall using MLE in Python.

2) Estimating the marginal distribution (GMM) of Temperature
ClusterLable.mat contains the cluster labels for the codes of 2)

 GMM for Temperature 
     expectationgmm
     maximizationgmm


3.)Generating the copula 

	CopulaSelection
	RMSEcalculation_OfCopula
	plotFGMdensity
	plotFGMdistribution


4.)MSDIvsSPIplots : Plots of MSDI vs SPI for 1,3,6,9,12 
months.