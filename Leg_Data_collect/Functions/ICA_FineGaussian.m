function [AllWeights, validationAccuracy] = ICA_FineGaussian(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, numSamples, numClasses)

%Find frequency matrices 

ICA_C1 = [kickOut.FFT_C1, kickIn.FFT_C1, Dorsiflexion.FFT_C1, Plantarflexion.FFT_C1, Rest.FFT_C1];
ICA_C2 = [kickOut.FFT_C2, kickIn.FFT_C2, Dorsiflexion.FFT_C2, Plantarflexion.FFT_C2, Rest.FFT_C2];
ICA_C3 = [kickOut.FFT_C3, kickIn.FFT_C3, Dorsiflexion.FFT_C3, Plantarflexion.FFT_C3, Rest.FFT_C3];
ICA_C4 = [kickOut.FFT_C4, kickIn.FFT_C4, Dorsiflexion.FFT_C4, Plantarflexion.FFT_C4, Rest.FFT_C4];

%Change function call (4, 8, 12, 16) based on number of features being used
numWeights = 10;
ICA_mdl_C1 = rica(ICA_C1, numWeights); %% 40 is number of features we want
ICA_mdl_C2 = rica(ICA_C2, numWeights); %% 40 is number of features we want
ICA_mdl_C3 = rica(ICA_C3, numWeights); %% 40 is number of features we want
ICA_mdl_C4 = rica(ICA_C4, numWeights); %% 40 is number of features we want

Weights1 = ICA_mdl_C1.TransformWeights;
Weights2 = ICA_mdl_C2.TransformWeights;
Weights3 = ICA_mdl_C3.TransformWeights;
Weights4 = ICA_mdl_C4.TransformWeights;

AllWeights = [Weights1, Weights2, Weights3, Weights4];

for i=1:numSamples
    if i <= numSamples/numClasses
        All_labelnum(i) = 1;
    elseif i <= (numSamples/numClasses)*2
        All_labelnum(i) = 2;
    elseif i <= (numSamples/numClasses)*3
        All_labelnum(i) = 3;
    elseif i <= (numSamples/numClasses)*4
        All_labelnum(i) = 4;
    else
        All_labelnum(i) = 5;
    end       
end    

AllWeights(:,4*numWeights + 1) = All_labelnum;

[trainedClassifier, validationAccuracy] = CubicGaussianSVMtrainer40(AllWeights);
%[trainedClassifier, validationAccuracy] = LinearGaussianSVMtrainer40(AllWeights);

end



