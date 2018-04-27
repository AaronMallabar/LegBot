function [ Prediction, start] = Test( figureNum, startPoints )

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%clear;
pause(1);
TestData1 = csvread('TestingDatakickIn.csv');

TestData1_max = max(TestData1);
Fs = 960;
t = (0:length(TestData1(:,1))-1)/Fs;
Lt=length(t);
f=(-Lt/2+1:Lt/2)*Fs/Lt;

Test_FFT = abs(fftshift(fft(TestData1)))/Lt;
TestData1_FFTSUM = sum(Test_FFT(4500:5500, :));

TestData1_FFTMEAN(1) = sum(TestData1(:,1).*f(:))./sum(TestData1(:,1));
TestData1_FFTMEAN(2) = sum(TestData1(:,2).*f(:))./sum(TestData1(:,2));
TestData1_FFTMEAN(3) = sum(TestData1(:,3).*f(:))./sum(TestData1(:,3));
TestData1_FFTMEAN(4) = sum(TestData1(:,4).*f(:))./sum(TestData1(:,4));

TestData1_ICA = rica(TestData1, 10);
TestData1_ICA1 = TestData1_ICA.TransformWeights(1,:);
TestData1_ICA2 = TestData1_ICA.TransformWeights(2,:);
TestData1_ICA3 = TestData1_ICA.TransformWeights(3,:);
TestData1_ICA4 = TestData1_ICA.TransformWeights(4,:);

Test = [TestData1_max TestData1_FFTSUM TestData1_FFTMEAN TestData1_ICA1 TestData1_ICA2 TestData1_ICA3 TestData1_ICA4];



load('trainedClassifier52.mat');

Prediction = trainedClassifier.predictFcn(Test)

switch nargin
    case 1
        startPoints = [10 0; 6 1; 2 0; 2 1.75];
    otherwise
end


start = model(Prediction,figureNum, startPoints);
figureNum = figureNum + 1;

end


