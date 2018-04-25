clc
clear all
close all



%% load excel files

% categories = {'Kick In', 'Kick Out'};
% rootFolder = 'C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegMovement';
% folder = 'C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder';
% 
%  digitDatasetPath = fullfile(matlabroot,'Users','robbf', ...
%     'Desktop','RIT Spring 2018','Biocybernetics',...
%     'BioProject','New folder');
% NEED Antenna Toolbox

%X = database(fullfile(rootFolder,categories), 'LabelSource','foldernames');
%% Reading All Data
num1 = cell(100,1);
D = dir(['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Kick_out\', '\*.csv']);
filenames = {D(:).name}.';
dataC = cell(100,1);
Temp = cell(100,1);
for ii = 1:20 
      % Create the full file name and partial filename
      fullname = ['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Kick_out\' D(ii).name];
      % Read in the data
      dataC{ii} = dlmread(fullname); 
      num = dataC{ii}(3800:5900,1:4);
      num1{ii} = num;
      
      Temp{ii,1} = filenames{ii,1};
end

D1 = dir(['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Kick_In\', '\*.csv']);
filenames1 = {D1(:).name}.';

for ii = 1:20
      % Create the full file name and partial filename
      fullname1 = ['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Kick_In\' D1(ii).name];
      % Read in the data
      dataC{ii+20} = dlmread(fullname1); 
      num = dataC{ii+20}(3800:5900,1:4);
      num1{ii+20} = num;
       Temp{ii+20,1} = filenames1{ii,1};
end

D2 = dir(['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Ankle_Dorsiflexion\', '\*.csv']);
filenames2 = {D2(:).name}.';

for ii = 1:20
      % Create the full file name and partial filename
      fullname2 = ['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Ankle_Dorsiflexion\' D2(ii).name];
      % Read in the data
      dataC{ii+40} = dlmread(fullname2);   
      num = dataC{ii+40}(3800:5900,1:4);
      num1{ii+40} = num;
      Temp{ii+40,1} = filenames2{ii,1};
end

D3 = dir(['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Ankle_Plantarflexion\', '\*.csv']);
filenames3 = {D3(:).name}.';

for ii = 1:20
      % Create the full file name and partial filename
      fullname3 = ['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Ankle_Plantarflexion\' D3(ii).name];
      % Read in the data
      dataC{ii+60} = dlmread(fullname3); 
      num = dataC{ii+60}(3800:5900,1:4);
      num1{ii+60} = num;      
      Temp{ii+60,1} = filenames3{ii,1};
end

D4 = dir(['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Relax\', '\*.csv']);
filenames4 = {D4(:).name}.';

for ii = 1:20
      % Create the full file name and partial filename
      fullname4 = ['C:\Users\robbf\Desktop\RIT Spring 2018\Biocybernetics\BioProject\New folder\LegBot\Relax\' D4(ii).name];
      % Read in the data
      dataC{ii+80} = dlmread(fullname4); 
      num = dataC{ii+80}(3800:5900,1:4);
      num1{ii+80} = num;      
      Temp{ii+80,1} = filenames4{ii,1};
      
end

%  f1 = 10 ;
%  G1 = cell(f1, 1) ;
%  for j = 1:f1
%     num = dataB{j}(4001:5728,1:4);
%     G1{j} = reshape(num,[48,48,3]);
%  end

 %% Create Table
% F3 = 100;
%  FIleName = cell(F3,1);
%  Label = cell(F3,1);
%  Signal = cell(F3,1);
 
 %DATA_CNN = table(dataB,dataB,dataB); works for creating 100 rows

 
 
     
%      for PK = 1:20
%          DATA_CNN = table(filenames{PK},'zero',dataB{PK})
% %          FileName = filenames{PK};
% %          Label = 000;
% %          Signal = dataB{PK}(1:4,4001:5728);
%         
%      end
%      

 
 



 





 %% Creating a 10 row by 1 column of 1728 data points  
 % for each dataset
 
 f1 = 100 ;
 %G1 = cell(f1,1) ;
 G9 = cell(f1,1);

 for j = 1:f1
     
    for j = 1:20 
    %num = dataC{j}(4001:5728,1:4);
   % G1{j} = reshape(num,[48,48,3]);
   % G3{j} = "zero";
    G9{j} = 'Kick Out';
  %  G6{j,1} = filenames{j,1};
    end
    for j = 21:40 
   % num = dataC{j}(4001:5728,1:4);
   % G1{j} = reshape(num,[48,48,3]);
   % G3{j} = "one";
    G9{j} = 'Kick In';
  %  G6{j,1} = filenames1{j,1};
    end
    for j = 41:60 
  %  num = dataC{j}(4001:5728,1:4);
   % G1{j} = reshape(num,[48,48,3]);
   % G3{j} = "two";
    G9{j} = 'Dorsiflexion';
  %  G6{j} = filenames2{j,1};
    end    
    for j = 61:80 
  %  num = dataC{j}(4001:5728,1:4);
   % G1{j} = reshape(num,[48,48,3]);
   % G3{j} = "three";
    G9{j} = 'Plantarflexion';
   % G6{j} = filenames3{j,1};
    end    
    for j = 81:100 
  %  num = dataC{j}(4001:5728,1:4);
  %  G1{j} = reshape(num,[48,48,3]);
   % G3{j} = "four";
    G9{j} = 'Relax';
   % G6{j} = filenames4{j,1};
    end  
 end
 %% 10000 samples
 
 
  
 
 
 
 
 
 
 
 
 
 %% Create Tables of data

 
%   DATA_CNN.Properties.VariableNames={'FileName','Label','Signal'}; 
%  DATA_CNN1 = table('FileName','Label','Signal');

% T = cell2table{dataB, dataB};
 
%% Rows to Columns Transpose




G5 = cell(100,1);


for i = 1:100
    G5{i} = num1{i}';
    
end 
%taD = G5';
G4 = cell(100,1);
% G4 = categorical(G9);


Filename = cell(10000,1);
Signal = cell(10000,1);
%Label = cell(10000,1);

 A1 = 0;
 B1 = 0;
 C1 = 0;
 D1 = 0;
 E1 = 0;
for RUN =1:10000
    a = randi(100,1);
    Filename{RUN} = Temp{a};
    Signal{RUN} = G5{a};
    G4{RUN} = G9{a};
    
    
    if (1 <= a) && (a <= 20)
        A1 = A1+1;
        
    end
       
    if (21 <= a) && (a <= 40)
        B1 = B1+1;
        
    end
        
    if (41 <= a) && (a <= 60)
        C1 = C1+1;
        
    end
        
    if (61 <= a) && (a <= 80)
        D1 = D1+1;
        
    end
        
    if (81 <= a) && (a <= 100)
        E1 = E1+1;
        
    end
    
end 


Label = categorical(G4);




 DATA_CNN = table(Filename,Label,Signal); % works for creating 100 rows
 DATA_CNN.Properties.VariableNames={'FileName','Label','Signal'}; 
 
 
 %% Create Histogram
 
 LL = cellfun(@length,Signal);
% h = histogram(L);
 





 
 KickOutA = Signal(Label == 'Kick Out');
 KickOutB = Label(Label == 'Kick Out');
 
 KickInA = Signal(Label == 'Kick In');
 KickInB = Label(Label == 'Kick In');
 
 DorsA = Signal(Label == 'Dorsiflexion');
 DorsB = Label(Label == 'Dorsiflexion');
 
 PlantA = Signal(Label == 'Plantarflexion');
 PlantB = Label(Label == 'Plantarflexion');
 
 RelaxA = Signal(Label == 'Relax');
 RelaxB = Label(Label == 'Relax');
 
[trainIndKickOut,~,testIndKickOut] = dividerand(A1,0.9,0.0,0.1);
[trainIndKickIn,~,testIndKickIn] = dividerand(B1,0.9,0.0,0.1);
[trainIndDors,~,testIndDors] = dividerand(C1,0.9,0.0,0.1);
[trainIndPlant,~,testIndPlant] = dividerand(D1,0.9,0.0,0.1);
[trainIndRelax,~,testIndRelax] = dividerand(E1,0.9,0.0,0.1);
 
% TRAIN DATA BELOW

ATrainKickOut =  KickOutA(trainIndKickOut);
BTrainKickOut =  KickOutB(trainIndKickOut);
 
ATrainKickIn =  KickInA(trainIndKickIn);
BTrainKickIn =  KickInB(trainIndKickIn);

ATrainDors =  DorsA(trainIndDors);
BTrainDors =  DorsB(trainIndDors);

ATrainPlant =  PlantA(trainIndPlant);
BTrainPlant =  PlantB(trainIndPlant);

ATrainRelax =  RelaxA(trainIndRelax);
BTrainRelax =  RelaxB(trainIndRelax);

% TEST DATA BELOW

ATestKickOut = KickOutA(testIndKickOut);
BTestKickOut = KickOutB(testIndKickOut);

ATestKickIn =  KickInA(testIndKickIn);
BTestKickIn =  KickInB(testIndKickIn);

ATestDors =  DorsA(testIndDors);
BTestDors =  DorsB(testIndDors);

ATestPlant =  PlantA(testIndPlant);
BTestPlant =  PlantB(testIndPlant);

ATestRelax =  RelaxA(testIndRelax);
BTestRelax =  RelaxB(testIndRelax);

% XTRAIN AND YTRAIN data SETS

A2 = floor(A1*0.9);
B2 = floor(B1*0.9);
C2 = floor(C1*0.9);
D2 = floor(D1*0.9);
E2 = floor(E1*0.9);

XTrain = [ATrainKickOut(1:length(trainIndKickOut));ATrainKickIn(1:length(trainIndKickIn)); ATrainDors(1:length(trainIndDors));ATrainPlant(1:length(trainIndPlant));...
    ATrainRelax(1:length(trainIndRelax))];

YTrain = [BTrainKickOut(1:length(trainIndKickOut));BTrainKickIn(1:length(trainIndKickIn)); BTrainDors(1:length(trainIndDors));BTrainPlant(1:length(trainIndPlant));...
    BTrainRelax(1:length(trainIndRelax))];

XTest = [ATestKickOut(1:length(testIndKickOut));ATestKickIn(1:length(testIndKickIn)); ATestDors(1:length(testIndDors));ATestPlant(1:length(testIndPlant));...
    ATestRelax(1:length(testIndRelax))];
YTest = [BTestKickOut(1:length(testIndKickOut));BTestKickIn(1:length(testIndKickIn)); BTestDors(1:length(testIndDors));BTestPlant(1:length(testIndPlant));...
    BTestRelax(1:length(testIndRelax))];
% Layers

layers = [ ...
    sequenceInputLayer(4)
    bilstmLayer(100,'OutputMode','last')
    fullyConnectedLayer(5)
    softmaxLayer
    classificationLayer
    ];

options = trainingOptions('sgdm', ... % Adam perfroms better RNN
    'MaxEpochs',5, ...            % passes through the data
    'MiniBatchSize', 500, ...     % how many training signals to look at, at a time
    'InitialLearnRate', 0.01, ... % speeds up training process
    'SequenceLength', 1000, ...   % breaks signal into 1000 pieces frees up memory
    'GradientThreshold', 1, ...   % stabalize training process
    'plots','training-progress', ... % generates the plots
    'Verbose',false);             % table corresponds to the data  

net = trainNetwork(XTrain,YTrain,layers,options);

figure(1)
trainPred = classify(net,XTrain,'SequenceLength',2000);
plotconfusion(YTrain',trainPred','Training Accuracy');

figure(2)
testPred = classify(net,XTest,'SequenceLength',2000);
plotconfusion(YTest',testPred','Testing Accuracy');


%% Generate random data set 80% of data
% f2 = 10000;
% G2 = cell(1,f2);
% G4 = cell(1,f2);
% 
% 
% for k = 1:f2
%     a=randi(100,1);    % generate random data
%    % disp(a);
%     G2{k} = dataB{a};   % Raw Data 4 x 10000
%     G4{k} = G3{a};      % Category Names 000, 001, 010, 011, 100
%     
% end

%% Layers for CNN


%G5 = categorical(G4);

%  inputSize = 4;
%  numHiddenUnits = 100;
%  numClasses = 5;
%  
% layers = [ ...
%     sequenceInputLayer(inputSize)
%     
%     lstmLayer(numHiddenUnits)
%  
%     fullyConnectedLayer(numClasses)
%     softmaxLayer
%     classificationLayer];

% options = trainingOptions('sgdm');
% net = trainNetwork(G2,G4,layers, options);



% layers = [ % layers or lgraph
%     imageInputLayer([48 48 3])            % imageDatastore([48 48 3]) or imageInputLayer or sequenceInputLayer
%     convolution2dLayer(8,30,'Padding',1)
%     reluLayer    
%     maxPooling2dLayer(3,'Stride',1) 
%     convolution2dLayer(5,20,'Padding',1)
%     reluLayer 
%     fullyConnectedLayer(5)
%     softmaxLayer
%     classificationLayer];
% layers = [ ...
%     sequenceInputLayer([48 48 3])
%     lstmLayer(10,'OutputMode','last')
%     fullyConnectedLayer(5)
%     softmaxLayer
%     classificationLayer]


% vent = configure(net, G2);

% convent = trainNetwork(G2,G4,layers,options); % G2 INPUT, G4 OUTPUT, layers, options
% [net,info] = trainNetwork(G2,G4,layers,options);
% net = trainNetwork(G2.',G4.',lgraph,options);



 