function [] = SVM()
%close all;
%data1 = [kickOutC1(4500:5500)',kickOutC2(4500:5500)',kickOutC3(4500:5500)', kickOutC4(4500:5500)'];
%data2 = [kickInC2(4500:5500)',kickInC2(4500:5500)',kickInC3(4500:5500)', kickInC4(4500:5500)'];
kickOutC1_Max = max(kickOutC1);
kickOutC2_Max = max(kickOutC2);
kickOutC3_Max = max(kickOutC3);
kickOutC4_Max = max(kickOutC4);


kickInC1_Max = max(kickInC1);
kickInC2_Max = max(kickInC2);
kickInC3_Max = max(kickInC3);
kickInC4_Max = max(kickInC4);

DorsiflexionC1_Max = max(DorsiflexionC1);
DorsiflexionC2_Max = max(DorsiflexionC2);
DorsiflexionC3_Max = max(DorsiflexionC3);
DorsiflexionC4_Max = max(DorsiflexionC4);

PlantarflexionC1_Max = max(PlantarflexionC1);
PlantarflexionC2_Max = max(PlantarflexionC2);
PlantarflexionC3_Max = max(PlantarflexionC3);
PlantarflexionC4_Max = max(PlantarflexionC4);

Rest1_Max = max(Rest1);
Rest2_Max = max(Rest2);
Rest3_Max = max(Rest3);
Rest4_Max = max(Rest4);

kickOutC1_Min = min(kickOutC1);
kickOutC2_Min = min(kickOutC2);
kickOutC3_Min = min(kickOutC3);
kickOutC4_Min = min(kickOutC4);

kickInC1_Min = min(kickInC1);
kickInC2_Min = min(kickInC2);
kickInC3_Min = min(kickInC3);
kickInC4_Min = min(kickInC4);

DorsiflexionC1_Min = min(DorsiflexionC1);
DorsiflexionC2_Min = min(DorsiflexionC2);
DorsiflexionC3_Min = min(DorsiflexionC3);
DorsiflexionC4_Min = min(DorsiflexionC4);

PlantarflexionC1_Min = min(PlantarflexionC1);
PlantarflexionC2_Min = min(PlantarflexionC2);
PlantarflexionC3_Min = min(PlantarflexionC3);
PlantarflexionC4_Min = min(PlantarflexionC4);

Rest1_min = min(Rest1);
Rest2_min = min(Rest2);
Rest3_min = min(Rest3);
Rest4_min = min(Rest4);

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
kickOutC1_sum = sum(abs(kickOutC1))/10;
kickOutC2_sum = sum(abs(kickOutC2))/10;
kickOutC3_sum = sum(abs(kickOutC3))/10;
kickOutC4_sum = sum(abs(kickOutC4))/10;


kickInC1_sum = sum(abs(kickInC1))/10;
kickInC2_sum = sum(abs(kickInC2))/10;
kickInC3_sum = sum(abs(kickInC3))/10;
kickInC4_sum = sum(abs(kickInC4))/10;

DorsiflexionC1_sum = sum(abs(DorsiflexionC1))/10;
DorsiflexionC2_sum = sum(abs(DorsiflexionC2))/10;
DorsiflexionC3_sum = sum(abs(DorsiflexionC3))/10;
DorsiflexionC4_sum = sum(abs(DorsiflexionC4))/10;

PlantarflexionC1_sum = sum(abs(PlantarflexionC1))/10;
PlantarflexionC2_sum = sum(abs(PlantarflexionC2))/10;
PlantarflexionC3_sum = sum(abs(PlantarflexionC3))/10;
PlantarflexionC4_sum = sum(abs(PlantarflexionC4))/10;

Rest1_sum = sum(abs(Rest1))/10;
Rest2_sum = sum(abs(Rest2))/10;
Rest3_sum = sum(abs(Rest3))/10;
Rest4_sum = sum(abs(Rest4))/10;


data1 = [kickOutC1_Range',kickOutC4_Range'];
data2 = [kickInC1_Range',kickInC4_Range'];
data3 = [DorsiflexionC1_Range',DorsiflexionC4_Range'];
data4 = [PlantarflexionC1_Range',PlantarflexionC4_Range'];
data5 = [Rest1_Range', Rest4_Range'];

data1 = data1(21:40, :);
data2 = data2(21:40, :);
data3 = data3(21:40, :);
data4 = data4(21:40, :);
data5 = data5(21:40, :);

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

figure(21);
%labels2 = [ones(40,1); 2*ones(40,1); 3*ones(40,1); 4*ones(40,1); 5*ones(40,1)];
gscatter(dataAll(:,1),dataAll(:,2),labels); 
h = gca; %get current axis
lims = [h.XLim h.YLim]; % Extract the x and y axis limits
title('Leg Movement');
xlabel('Channel 1');
ylabel('Channel 4');
legend('Location','Northwest');

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
d = .02; %.02 is the largest this can be because it must be smaller than the smallest Range. 
[x1Grid,x2Grid] = meshgrid(min(dataAll(:,1)):d:max(dataAll(:,1)),...
    min(dataAll(:,2)):d:max(dataAll(:,2)));
xGrid = [x1Grid(:),x2Grid(:)];
N = size(xGrid,1);
Scores = zeros(N,numClasses);

for j = 1:numClasses
    [~,score] = predict(SVMModels{j},xGrid); %takes a bit of time %Predicts which class each point on the grid is. 
    Scores(:,j) = score(:,2); % Second column contains positive-class scores
end

%This puts numbers to each point on the grid that represents the class
%Used for calculating Error
 [~,maxScore] = max(Scores,[],2); %Scores is how accurately it is inside the class
 [rowSize, columnSize] = size(x1Grid); 
 maxscore2 = reshape(maxScore,[rowSize, columnSize]);
 

%For loop iterates each sample
%and decides which class each point should be. 
for i = 1:numSamples
  Xindex = floor(dataAll(i,2)/d);
  Yindex = floor(dataAll(i,1)/d);
  
  if Xindex >= rowSize
      Xindex = rowSize;
  end
  if Yindex >= columnSize
      Yindex = columnSize;
  end
  classnumber = maxscore2(Xindex, Yindex);
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

figure(22);
h(1:5) = gscatter(xGrid(:,1),xGrid(:,2),maxScore,'bmgyr'); %plots the regions
hold on
h(6:10) = gscatter(dataAll(:,1),dataAll(:,2),labels); %plots the points inside the regions
title('{\bf Leg movement Classification regions}');
xlabel('Channel 1');
ylabel('Channel 4');
legend(h,{'Plantarflexion Region','Rest region','Dorsiflexion Region','KickOut Region','kickIn Region',  ...
    'Observed KickIn','Observed kickOut','Observed Dorsiflexion', 'Observed Plantarflexion', 'Observed Rest '},...
    'Location','Northwest');
axis tight
hold off

dataAllinfo = table(dataAll(:,1), dataAll(:,2), labels, predictedlabels);
knownGroups = labels;
PredictedGroups =  predictedlabels;

[C,order] = confusionmat(knownGroups,PredictedGroups,'Order',{'kickOut','kickIn','dorsiflexion','Plantarflexion','Rest'})
Cpercent = (C/20)*100
figure(23);

train = zeros(5, 100);
predicted = zeros(5, 100);

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
   classnumber = maxscore2(Xindex, Yindex);
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

plotconfusion(train,predicted);


end

