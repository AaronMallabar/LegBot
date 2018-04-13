clear;
clc
close all;

set(0, 'DefaultFigureWindowStyle','docked');

%global variabls:
numSamples = 200;
numClasses = 5;
figureNum = 1;
[kickOut kickIn Dorsiflexion Plantarflexion Rest] = readData(); %read and save as .mat then load it in.
load('AutoLegData.mat');


%% Plotting Raw Data
FirstPlot = 1;
LastPlot = 40;
figureNum = plotData(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, FirstPlot, LastPlot, figureNum);

%% Wavelets
NumWaveletSamples = 5;  %Higher the number the longer it takes, plan about 30 sec per sample. 
% [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = ...
%     wavelets(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, NumWaveletSamples, figureNum);

%% Calculate FFT's

[kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = ...
    CalculateFFT(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum);

%% Power Spectral Density

%PSD();

%% SVM

%SVM();
%SVM3();