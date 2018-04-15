function [] = ...
    SVM_FineGaussian(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum, numSamples, numClasses)
%UNTITLED2 Summary of this function goes here
%Find Maximums
numTrainSamples = 100;

kickOut.C1_Max = max(kickOut.C1);
kickOut.C2_Max = max(kickOut.C2);
kickOut.C3_Max = max(kickOut.C3);
kickOut.C4_Max = max(kickOut.C4);
kickIn.C1_Max = max(kickIn.C1);
kickIn.C2_Max = max(kickIn.C2);
kickIn.C3_Max = max(kickIn.C3);
kickIn.C4_Max = max(kickIn.C4);
Dorsiflexion.C1_Max = max(Dorsiflexion.C1);
Dorsiflexion.C2_Max = max(Dorsiflexion.C2);
Dorsiflexion.C3_Max = max(Dorsiflexion.C3);
Dorsiflexion.C4_Max = max(Dorsiflexion.C4);
Plantarflexion.C1_Max = max(Plantarflexion.C1);
Plantarflexion.C2_Max = max(Plantarflexion.C2);
Plantarflexion.C3_Max = max(Plantarflexion.C3);
Plantarflexion.C4_Max = max(Plantarflexion.C4);
Rest.C1_Max = max(Rest.C1);
Rest.C2_Max = max(Rest.C2);
Rest.C3_Max = max(Rest.C3);
Rest.C4_Max = max(Rest.C4);

% kickOut.Max         = [kickOut.C1_Max', kickOut.C4_Max'];
% kickIn.Max          = [kickIn.C1_Max', kickIn.C4_Max'];
% Dorsiflexion.Max    = [Dorsiflexion.C1_Max', Dorsiflexion.C4_Max'];
% Plantarflexion.Max  = [Plantarflexion.C1_Max', Plantarflexion.C4_Max'];
% Rest.Max            = [Rest.C1_Max',Rest.C4_Max'];

kickOut.Max         = [kickOut.C1_Max',kickOut.C2_Max', kickOut.C3_Max', kickOut.C4_Max'];
kickIn.Max          = [kickIn.C1_Max',kickIn.C2_Max', kickIn.C3_Max', kickIn.C4_Max'];
Dorsiflexion.Max    = [Dorsiflexion.C1_Max',Dorsiflexion.C2_Max', Dorsiflexion.C3_Max', Dorsiflexion.C4_Max'];
Plantarflexion.Max  = [Plantarflexion.C1_Max',Plantarflexion.C2_Max', Plantarflexion.C3_Max', Plantarflexion.C4_Max'];
Rest.Max            = [Rest.C1_Max',Rest.C2_Max', Rest.C3_Max', Rest.C4_Max'];

% for i=1:2:numSamples
%     if i <= numSamples/numClasses
%         labels(i) = {'kickOut'};
%         labelnum(i) = 1;
%     elseif i <= (numSamples/numClasses)*2
%         labels(i) = {'kickIn'};
%         labelnum(i) = 2;
%     elseif i <= (numSamples/numClasses)*3
%         labels(i) = {'dorsiflexion'};
%         labelnum(i) = 3;
%     elseif i <= (numSamples/numClasses)*4
%         labels(i) = {'Plantarflexion'};
%         labelnum(i) = 4;
%     else
%         labels(i) = {'Rest'};
%         labelnum(i) = 5;
%     end       
% end    

labelnum(1:(numTrainSamples/5),1) = 1;
labelnum((numTrainSamples/5)+1:2*(numTrainSamples/5),1) = 2;
labelnum(2*(numTrainSamples/5)+1:3*(numTrainSamples/5),1) = 3;
labelnum(3*(numTrainSamples/5)+1:4*(numTrainSamples/5),1) = 4;
labelnum(4*(numTrainSamples/5)+1:5*(numTrainSamples/5),1) = 5;


%labels = labels';%Flip 
%labelnum = labelnum';
Training_Max = zeros(numTrainSamples,5);
Training_Max = [kickOut.Max(1:(numTrainSamples/5),:);...
                kickIn.Max(1:(numTrainSamples/5),:);...
                Dorsiflexion.Max(1:(numTrainSamples/5),:);...
                Plantarflexion.Max(1:(numTrainSamples/5),:);...
                Rest.Max(1:(numTrainSamples/5),:)];
            
Training_Max(:,5) = labelnum;
Interval = (numSamples/5) - (numTrainSamples/5);

Testing_Max = [kickOut.Max(1+(numTrainSamples/5):(numSamples/5),:);...
               kickIn.Max(1+(numTrainSamples/5):(numSamples/5),:);...
               Dorsiflexion.Max(1+(numTrainSamples/5):(numSamples/5),:);...
               Plantarflexion.Max(1+(numTrainSamples/5):(numSamples/5),:);...
               Rest.Max(1+(numTrainSamples/5):(numSamples/5),:)];
           

                
known(1:Interval,1) = 1;
known(Interval+1:2*Interval,1) = 2;
known(2*Interval+1:3*Interval,1) = 3;
known(3*Interval+1:4*Interval,1) = 4;
known(4*Interval+1:5*Interval,1) = 5;

[trainedClassifier, validationAccuracy] = FineGaussianSVMtrainer(Training_Max);
for i=1:length(Testing_Max(:,1))
     Test = Testing_Max(i,1:4);
     prediction(i) = trainedClassifier.predictFcn(Test);
end

C = confusionmat(known,prediction')
Cpercent = (C/((numSamples-numTrainSamples)/numClasses))*100

end

