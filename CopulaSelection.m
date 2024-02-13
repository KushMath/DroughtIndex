%This code gives the copula selecton process
close all;
clear all;
clc;

%% 
load('NC.mat');

R = NC(:, 1);
T = NC(:, 2);
%% Generating CDF of Rainfall
%beta marginal parameters (from RainfallBetaEstimation_Python.ipynb)
a1= 0.77897; 
b1= 5.27087;

R_new=(R-min(R))/(max(R)-min(R));
u=betacdf(R_new,a1,b1);

%% Generating CDF of Temperature
%temperature marginal parameters (from GMMforTemperature.m)
mu1=24.8586;
mu2=28.65893;
sigma1= 0.80152;
sigma2=1.31911;

percentage1 = 0.31;
percentage2 = 0.69;

numDataPoints1 = numel(T);
subsetSize1 = round(percentage1 * numDataPoints1);
% Select a random subset of data for fitting
subset1 = datasample(T, subsetSize1, 'Replace', false);
T1_cdf = normcdf(subset1,mu1,sigma1);


numDataPoints2 = numel(T);
subsetSize2 = round(percentage2 * numDataPoints2);

% Select a random subset of data for fitting
subset2= datasample(T, subsetSize2, 'Replace', false);
T2_cdf=normcdf(subset2,mu2,sigma2);

T_CDF=[T1_cdf; T2_cdf];

v=T_CDF;
%% 

tau=corr(u,v,'type','kendall');
tau; %-0.007111774604487