clear ; close all; clc

% Load from ex6data2:  You will have X, y in your environment
load('ex6data1.mat');

plotData(X, y);

C = 1; sigma = 0.5;

model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
visualizeBoundary(X, y, model);    