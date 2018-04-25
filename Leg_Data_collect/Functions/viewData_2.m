clear;
clc
close all;

set(0, 'DefaultFigureWindowStyle','docked');

%global variabls:
numSamples = 200;
numClasses = 5;
figureNum = 1;
%[kickOut kickIn Dorsiflexion Plantarflexion Rest] = readData(); %read and save as .mat then load it in.
load('AutoLegData.mat');
[kickOut kickIn Dorsiflexion Plantarflexion Rest figureNum] = CalculateFFT(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, 1);
%model(3, 1);


%% Plotting Raw Data
% FirstPlot = 1;
% LastPlot = 20;
% figureNum = plotData(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, FirstPlot, LastPlot, figureNum);

% %% Wavelets
%   NumWaveletSamples = 1;  %Higher the number the longer it takes, plan about 30 sec per sample. 
%  [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = ...
%      wavelets(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, NumWaveletSamples, figureNum);
% 
% %% Calculate FFT's
% 
% [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = ...
%      CalculateFFT(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum);
% 
% %% Power Spectral Density
% 
% [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = ...
%     PSD(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum);

%% SVM

%SVM(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum, numSamples, numClasses);

[ICA_model_weights, ICAvalidationAccuracy] = ICA_FineGaussian(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, numSamples, numClasses);
Accuracy = SVM_FineGaussian(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, ICA_model_weights, figureNum, numSamples, numClasses);
%SVM3();