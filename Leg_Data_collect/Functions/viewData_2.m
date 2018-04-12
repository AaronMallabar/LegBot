clear;
clc
close all;

set(0, 'DefaultFigureWindowStyle','docked');

%global variabls:
numSamples = 200;
numClasses = 5;
%[kickOut kickIn Dorsiflexion Plantarflexion Rest] = readData(); %read and save as .mat then load it in.
load('AutoLegData.mat');


%% Plotting Raw Data
FirstPlot = 1;
LastPlot = 40;
plotData(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, FirstPlot, LastPlot);

%% Wavelets

wavelets();

%% Calculate FFT's

CalculateFFT();

%% Power Spectral Density

PSD();

%% SVM

SVM();
SVM3();