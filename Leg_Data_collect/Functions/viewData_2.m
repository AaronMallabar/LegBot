clear;
clc
close all;

set(0, 'DefaultFigureWindowStyle','docked');
readData(); %read and save as .mat then load it in.
%load('LegData.mat');

%global variabls:
numSamples = 100;
numClasses = 5;

%% Plotting Raw Data

plotData();

%% Wavelets

wavelets();

%% Calculate FFT's

CalculateFFT();

%% Power Spectral Density

PSD();

%% SVM

SVM();