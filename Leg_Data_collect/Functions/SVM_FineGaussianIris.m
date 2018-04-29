function [TotalAccuracy] = ...
    SVM_FineGaussianIris()
%UNTITLED2 Summary of this function goes here
%Find Maximums
numSamples = 150;
numClasses = 3;
numTrainSamples = 75;
numTestData = numSamples-numTrainSamples;

load fisheriris
species2 = [ones(50,1); 2*ones(50,1); 3*ones(50,1)];
AllData = [meas species2];
[row, col] = size(AllData);
AllData_random = AllData(randperm(size(AllData,1)),:);
Training_Max = AllData_random(1:numTrainSamples,:);
Testing_Max = AllData_random(numTrainSamples+1:end, 1:col);
known = AllData_random(numTrainSamples+1:end, col);

[trainedClassifier, validationAccuracy] = CubicGaussianSVMtrainerIris(Training_Max);

for i=1:length(Testing_Max(:,1))
     Test = Testing_Max(i,1:col-1);
     prediction(i) = trainedClassifier.predictFcn(Test);
end

C = confusionmat(known,prediction')
for i=1:numClasses
    Cpercent(i,:) = (C(i,:)/sum(C(i,:)))*100;
end

Cpercent

TotalAccuracy = 0;
for i=1:numClasses
    TotalAccuracy = TotalAccuracy + C(i,i);
end
TotalAccuracy = TotalAccuracy / numTrainSamples

end

