function [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum]...
    = SVM3(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum, numSamples, numClasses)

%restoredefaultpath; matlabrc

kickOutC1_Max = max(kickOut.C1);
kickOutC2_Max = max(kickOut.C2);
kickOutC3_Max = max(kickOut.C3);
kickOutC4_Max = max(kickOut.C4);


kickInC1_Max = max(kickIn.C1);
kickInC2_Max = max(kickIn.C2);
kickInC3_Max = max(kickIn.C3);
kickInC4_Max = max(kickIn.C4);

DorsiflexionC1_Max = max(Dorsiflexion.C1);
DorsiflexionC2_Max = max(Dorsiflexion.C2);
DorsiflexionC3_Max = max(Dorsiflexion.C3);
DorsiflexionC4_Max = max(Dorsiflexion.C4);

PlantarflexionC1_Max = max(Plantarflexion.C1);
PlantarflexionC2_Max = max(Plantarflexion.C2);
PlantarflexionC3_Max = max(Plantarflexion.C3);
PlantarflexionC4_Max = max(Plantarflexion.C4);

Rest1_Max = max(Rest.C1);
Rest2_Max = max(Rest.C2);
Rest3_Max = max(Rest.C3);
Rest4_Max = max(Rest.C4);

kickOutC1_Min = min(kickOut.C1);
kickOutC2_Min = min(kickOut.C2);
kickOutC3_Min = min(kickOut.C3);
kickOutC4_Min = min(kickOut.C4);

kickInC1_Min = min(kickIn.C1);
kickInC2_Min = min(kickIn.C2);
kickInC3_Min = min(kickIn.C3);
kickInC4_Min = min(kickIn.C4);

DorsiflexionC1_Min = min(Dorsiflexion.C1);
DorsiflexionC2_Min = min(Dorsiflexion.C2);
DorsiflexionC3_Min = min(Dorsiflexion.C3);
DorsiflexionC4_Min = min(Dorsiflexion.C4);

PlantarflexionC1_Min = min(Plantarflexion.C1);
PlantarflexionC2_Min = min(Plantarflexion.C2);
PlantarflexionC3_Min = min(Plantarflexion.C3);
PlantarflexionC4_Min = min(Plantarflexion.C4);

Rest1_min = min(Rest.C1);
Rest2_min = min(Rest.C2);
Rest3_min = min(Rest.C3);
Rest4_min = min(Rest.C4);

kickOutC1_Range = kickOutC1_Max - kickOutC1_Min;
kickOutC2_Range = kickOutC2_Max - kickOutC2_Min;
kickOutC3_Range = kickOutC3_Max - kickOutC3_Min;
kickOutC4_Range = kickOutC4_Max - kickOutC4_Min;

kickInC1_Range = kickInC1_Max - kickInC1_Min;
kickInC2_Range = kickInC2_Max - kickInC2_Min;
kickInC3_Range = kickInC3_Max - kickInC3_Min;
kickInC4_Range = kickInC4_Max - kickInC4_Min;

DorsiflexionC1_Range = DorsiflexionC1_Max - DorsiflexionC1_Min;
DorsiflexionC2_Range = DorsiflexionC2_Max - DorsiflexionC2_Min;
DorsiflexionC3_Range = DorsiflexionC3_Max - DorsiflexionC3_Min;
DorsiflexionC4_Range = DorsiflexionC4_Max - DorsiflexionC4_Min;

PlantarflexionC1_Range = PlantarflexionC1_Max - PlantarflexionC1_Min;
PlantarflexionC2_Range = PlantarflexionC2_Max - PlantarflexionC2_Min;
PlantarflexionC3_Range = PlantarflexionC3_Max - PlantarflexionC3_Min;
PlantarflexionC4_Range = PlantarflexionC4_Max - PlantarflexionC4_Min;

Rest1_Range = Rest1_Max - Rest1_min;
Rest2_Range = Rest2_Max - Rest2_min;
Rest3_Range = Rest3_Max - Rest3_min;
Rest4_Range = Rest4_Max - Rest4_min;

%%sums%%
kickOutC1_sum = sum(abs(kickOut.C1))/10;
kickOutC2_sum = sum(abs(kickOut.C2))/10;
kickOutC3_sum = sum(abs(kickOut.C3))/10;
kickOutC4_sum = sum(abs(kickOut.C4))/10;


kickInC1_sum = sum(abs(kickIn.C1))/10;
kickInC2_sum = sum(abs(kickIn.C2))/10;
kickInC3_sum = sum(abs(kickIn.C3))/10;
kickInC4_sum = sum(abs(kickIn.C4))/10;

DorsiflexionC1_sum = sum(abs(Dorsiflexion.C1))/10;
DorsiflexionC2_sum = sum(abs(Dorsiflexion.C2))/10;
DorsiflexionC3_sum = sum(abs(Dorsiflexion.C3))/10;
DorsiflexionC4_sum = sum(abs(Dorsiflexion.C4))/10;

PlantarflexionC1_sum = sum(abs(Plantarflexion.C1))/10;
PlantarflexionC2_sum = sum(abs(Plantarflexion.C2))/10;
PlantarflexionC3_sum = sum(abs(Plantarflexion.C3))/10;
PlantarflexionC4_sum = sum(abs(Plantarflexion.C4))/10;

Rest1_sum = sum(abs(Rest.C1))/10;
Rest2_sum = sum(abs(Rest.C2))/10;
Rest3_sum = sum(abs(Rest.C3))/10;
Rest4_sum = sum(abs(Rest.C4))/10;


data1 = [kickOutC1_Range',kickOutC4_Range',kickOutC1_sum'];
data2 = [kickInC1_Range',kickInC4_Range',kickInC1_sum'];
data3 = [DorsiflexionC1_Range',DorsiflexionC4_Range',DorsiflexionC1_sum'];
data4 = [PlantarflexionC1_Range',PlantarflexionC4_Range',PlantarflexionC1_sum'];
data5 = [Rest1_Range',Rest4_Range',Rest1_sum'];

% data1 = data1(21:40, :);
% data2 = data2(21:40, :);
% data3 = data3(21:40, :);
% data4 = data4(21:40, :);
% data5 = data5(21:40, :);

% data1 = data1(1:20, :);
% data2 = data2(1:20, :);
% data3 = data3(1:20, :);
% data4 = data4(1:20, :);
% data5 = data5(1:20, :);

% data1 = [kickOutC3_sum',kickOutC4_sum'];
% data2 = [kickInC3_sum',kickInC4_sum'];
% data3 = [DorsiflexionC3_sum',DorsiflexionC4_sum'];
% data4 = [PlantarflexionC3_sum',PlantarflexionC4_sum'];
% data5 = [Rest3_sum', Rest4_sum'];

dataAll = [data1;data2;data3;data4;data5];
for i=1:numSamples
    if i <= numSamples/numClasses
        labels(i) = {'kickOut'};
    elseif i <= (numSamples/numClasses)*2
        labels(i) = {'kickIn'};
    elseif i <= (numSamples/numClasses)*3
        labels(i) = {'dorsiflexion'};
    elseif i <= (numSamples/numClasses)*4
        labels(i) = {'Plantarflexion'};
    else
        labels(i) = {'Rest'};
    end
        
end    

labels = labels';

% figure(21);
% %labels2 = [ones(40,1); 2*ones(40,1); 3*ones(40,1); 4*ones(40,1); 5*ones(40,1)];
% gscatter(dataAll(:,1),dataAll(:,2),dataAll(:,3),labels); 
% h = gca; %get current axis
% lims = [h.XLim h.YLim h.ZLim]; % Extract the x and y axis limits
% title('Leg Movement');
% xlabel('Channel 1 Range');
% ylabel('Channel 4 Range');
% zlabel('Channel 1 Sum');
% legend('Location','Northwest');

SVMModels = cell(5,1); %Creates empty models
classes = unique(labels); %Array of labels representing the classes
rng(1); % For reproducibility

%Create the 5 SVM models (One for each class)
for j = 1:numClasses
    indx = strcmp(labels,classes(j)); % Create binary classes for each classifier
    SVMModels{j} = fitcsvm(dataAll,indx,'ClassNames',[false true],'Standardize',true,...
        'KernelFunction','rbf','BoxConstraint',1);
    
end
%scatter plot resolution (Setup for scatter plot)%
%d = 0.002; 
d = .08; %.02 is the largest this can be because it must be smaller than the smallest Range. 
[x1Grid,x2Grid,x3Grid] = meshgrid(min(dataAll(:,1)):d:max(dataAll(:,1)),...
                           min(dataAll(:,2)):d:max(dataAll(:,2)),...
                           min(dataAll(:,3)):d:max(dataAll(:,3)));
xGrid = [x1Grid(:),x2Grid(:),x3Grid(:)];
N = size(xGrid,1);
Scores = zeros(N,numClasses);

for j = 1:numClasses
    [~,score] = predict(SVMModels{j},xGrid); %takes a bit of time %Predicts which class each point on the grid is. 
    Scores(:,j) = score(:,2); % Second column contains positive-class scores
end

%This puts numbers to each point on the grid that represents the class
%Used for calculating Error
 [~,maxScore] = max(Scores,[],2); %Scores is how accurately it is inside the class
 [rowSize, columnSize, heightSize] = size(x1Grid); 
 maxscore2 = reshape(maxScore,[rowSize, columnSize, heightSize]);
 

%For loop iterates each sample
%and decides which class each point should be. 
for i = 1:numSamples
  Xindex = floor(dataAll(i,2)/d);
  Yindex = floor(dataAll(i,1)/d);
  Zindex = floor(dataAll(i,3)/d);
  
  if Xindex >= rowSize
      Xindex = rowSize;
  end
  if Yindex >= columnSize
      Yindex = columnSize;
  end
  if Zindex >= heightSize
      Zindex = heightSize;
  end
  classnumber = maxscore2(Xindex, Yindex, Zindex);
  switch classnumber
      case 1
          predictedlabels(i) = {'Plantarflexion'};
      case 2
          predictedlabels(i) = {'Rest'};
      case 3
          predictedlabels(i) = {'dorsiflexion'};
      case 5
          predictedlabels(i) = {'kickOut'};
      case 4
          predictedlabels(i) = {'kickIn'};
  end     
end

predictedlabels = predictedlabels';

%[0 0 1; 0 1 0; 1 0 0; 1 0 1; .5 .1 1 ]

% figure(22);
% h(1:5) = gscatter(xGrid(:,1),xGrid(:,2),maxScore,'bmgyr'); %plots the regions
% hold on
% h(6:10) = gscatter(dataAll(:,1),dataAll(:,2),labels); %plots the points inside the regions
% title('{\bf Leg movement Classification regions}');
% xlabel('Channel 1');
% ylabel('Channel 4');
% legend(h,{'Plantarflexion Region','Rest region','Dorsiflexion Region','KickOut Region','kickIn Region',  ...
%     'Observed KickIn','Observed kickOut','Observed Dorsiflexion', 'Observed Plantarflexion', 'Observed Rest '},...
%     'Location','Northwest');
% axis tight
% hold off

dataAllinfo = table(dataAll(:,1), dataAll(:,2), dataAll(:,3), labels, predictedlabels);
knownGroups = labels;
PredictedGroups =  predictedlabels;

[C,order] = confusionmat(knownGroups,PredictedGroups,'Order',{'kickOut','kickIn','dorsiflexion','Plantarflexion','Rest'})
Cpercent = (C/(numSamples/numClasses))*100
figure(23);

train = zeros(numClasses, numSamples);
predicted = zeros(numClasses, numSamples);

for i=1:numSamples
    if i <= (numSamples/numClasses)*1
        train(1,i) = 1;
    elseif i <= (numSamples/numClasses)*2
        train(2,i) = 1;
    elseif i <= (numSamples/numClasses)*3
        train(3,i) = 1;
    elseif i <= (numSamples/numClasses)*4
        train(4,i) = 1;
    else
        train(5,i) = 1;
    end
  Xindex = floor(dataAll(i,2)/d);
  Yindex = floor(dataAll(i,1)/d);
  if Xindex >= rowSize
      Xindex = rowSize;
  end
  if Yindex >= columnSize
      Yindex = columnSize;
  end
  if Zindex >= heightSize
      Zindex = heightSize;
  end
   classnumber = maxscore2(Xindex, Yindex, Zindex);
  switch classnumber
      case 5
          predicted(1,i) = 1;
      case 4
          predicted(2,i) = 1;
      case 3
          predicted(3,i) = 1;
      case 2
          predicted(5,i) = 1;
      case 1
          predicted(4,i) = 1;
  end
end    

%plotconfusion(train',predicted');

end
