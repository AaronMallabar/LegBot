



Dors_file =     struct2cell(Dorsiflexion);
KickOut_file =  struct2cell(kickOut);
KickIn_file =   struct2cell(kickIn);
Plantar_file =  struct2cell(Plantarflexion);
Relax_file =     struct2cell(Rest);



File_org = cell(200,1);             % storing file names
DATA_file = cell(200,1);            % Storing entire 200 samples
CATname = cell(200,1);                   % Store Label
DATA = cell(200,1);
    

    j = 0;

    for j = 1:40
     Dors_move(:,1) = Dors_file{1,1}(:,j);
     Dors_move(:,2) = Dors_file{2,1}(:,j);
     Dors_move(:,3) = Dors_file{3,1}(:,j);
     Dors_move(:,4) = Dors_file{4,1}(:,j);
     
     DATA{j,1} = Dors_move;
     
     num = DATA{j}(4800:6200,1:4);
     
     DATA_file{j} = num;
     
     File_org{j} =  ['Dorsiflexion ', num2str(j)];  
     
     CATname{j} = 'Dorsiflexion';
 %%%%%%%%%%%%%%%%    
     kickOut_move(:,1) = KickOut_file{1,1}(:,j);
     kickOut_move(:,2) = KickOut_file{2,1}(:,j);
     kickOut_move(:,3) = KickOut_file{3,1}(:,j);
     kickOut_move(:,4) = KickOut_file{4,1}(:,j);
       
     DATA{j+40,1} = kickOut_move;
     
     num = DATA{j+40}(4800:6200,1:4);
     
     DATA_file{j+40,1} = num;
     
     File_org{j+40} =  ['Kick Out ', num2str(j)]; 
     
     CATname{j+40} = 'Kick Out';
 %%%%%%%%%%%%%%%%%    
     kickIn_move(:,1) = KickIn_file{1,1}(:,j);
     kickIn_move(:,2) = KickIn_file{2,1}(:,j);
     kickIn_move(:,3) = KickIn_file{3,1}(:,j);
     kickIn_move(:,4) = KickIn_file{4,1}(:,j);
       
     DATA{j+80,1} = kickIn_move;
     
     num = DATA{j+80}(4800:6200,1:4);
     
     DATA_file{j+80,1} = num;
     
     File_org{j+80} =  ['Kick In ', num2str(j)]; 
     
     CATname{j+80} = 'Kick In';
%%%%%%%%%%%%%%%%%%%     
     Plantar_move(:,1) = Plantar_file{1,1}(:,j);
     Plantar_move(:,2) = Plantar_file{2,1}(:,j);
     Plantar_move(:,3) = Plantar_file{3,1}(:,j);
     Plantar_move(:,4) = Plantar_file{4,1}(:,j);
     
     
     DATA{j+120} = Plantar_move;
     
     num = DATA{j+120}(4800:6200,1:4);
     
     DATA_file{j+120,1} = num;
     
     File_org{j+120} =  ['Plantarflexion ', num2str(j)]; 
     
     CATname{j+120} = 'Plantarflexion';
%%%%%%%%%%%%%%%%%%%%%%     

 %%%%%%%%%%%%%%%%%%%%    
     Relax_move(:,1) = Relax_file{1,1}(:,j);
     Relax_move(:,2) = Relax_file{2,1}(:,j);
     Relax_move(:,3) = Relax_file{3,1}(:,j);
     Relax_move(:,4) = Relax_file{4,1}(:,j);
     
     
     DATA{j+160} = Relax_move;
     
     num = DATA{j+160}(4800:6200,1:4);
     
     DATA_file{j+160,1} = num;
     
     File_org{j+160} =  ['Relax ', num2str(j)]; 
     
     CATname{j+160} = 'Relax';
     
     
    end
      
   

   
   %% Transpose
Tran_DATA = cell(200,1);

i = 0;
for i = 1:200
    Tran_DATA{i} = DATA_file{i}';
    
end 


%% Create 20,000 samples from random of 200


SAMPLE = 1000;

file = cell(SAMPLE,1);
Signal = cell(SAMPLE,1);
label = cell(SAMPLE,1);

 A1 = 0;
 B1 = 0;
 C1 = 0;
 D1 = 0;
 E1 = 0;
 
for RUN =1:SAMPLE
    a = randi(200,1);
    file{RUN} = File_org{a};        % File_org is the file name number
    Signal{RUN} = Tran_DATA{a};            % Tran_DATA is the signal
    label{RUN} = CATname{a};                %  CATname is the label
    
    
    if (1 <= a) && (a <= 40)
        A1 = A1+1;
        
    end
       
    if (41 <= a) && (a <= 80)
        B1 = B1+1;
        
    end
        
    if (81 <= a) && (a <= 120)
        C1 = C1+1;
        
    end
        
    if (121 <= a) && (a <= 160)
        D1 = D1+1;
        
    end
        
    if (161 <= a) && (a <= 200)
        E1 = E1+1;
        
    end
    
end 

Filename = categorical(file);
Label = categorical(label);

  DATA_CNN = table(Filename,Label,Signal); % works for creating 100 rows
  DATA_CNN.Properties.VariableNames={'FileName','Label','Signal'}; 
 
 LL = cellfun(@length,Signal);

 
 
 
 
 
 
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
 
[trainIndKickOut,~,testIndKickOut] = dividerand(B1,0.8,0.0,0.2);
[trainIndKickIn,~,testIndKickIn] = dividerand(C1,0.8,0.0,0.2);
[trainIndDors,~,testIndDors] = dividerand(A1,0.8,0.0,0.2);
[trainIndPlant,~,testIndPlant] = dividerand(D1,0.8,0.0,0.2);
[trainIndRelax,~,testIndRelax] = dividerand(E1,0.8,0.0,0.2);
 
%% TRAIN DATA BELOW

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

% A2 = floor(A1*0.9);
% B2 = floor(B1*0.9);
% C2 = floor(C1*0.9);
% D2 = floor(D1*0.9);
% E2 = floor(E1*0.9);

XTrain = [ATrainKickOut(1:length(trainIndKickOut));ATrainKickIn(1:length(trainIndKickIn)); ATrainDors(1:length(trainIndDors));ATrainPlant(1:length(trainIndPlant));...
    ATrainRelax(1:length(trainIndRelax))];

YTrain = [BTrainKickOut(1:length(trainIndKickOut));BTrainKickIn(1:length(trainIndKickIn)); BTrainDors(1:length(trainIndDors));BTrainPlant(1:length(trainIndPlant));...
    BTrainRelax(1:length(trainIndRelax))];

XTest = [ATestKickOut(1:length(testIndKickOut));ATestKickIn(1:length(testIndKickIn)); ATestDors(1:length(testIndDors));ATestPlant(1:length(testIndPlant));...
    ATestRelax(1:length(testIndRelax))];
YTest = [BTestKickOut(1:length(testIndKickOut));BTestKickIn(1:length(testIndKickIn)); BTestDors(1:length(testIndDors));BTestPlant(1:length(testIndPlant));...
    BTestRelax(1:length(testIndRelax))];
% Layers

% layers = [ ...
%     sequenceInputLayer(4)
%     bilstmLayer(150,'OutputMode','last')
%     fullyConnectedLayer(5)
%     softmaxLayer
%     classificationLayer
%     ];
% 
% options = trainingOptions('sgdm', ... % Adam perfroms better RNN
%     'MaxEpochs',5, ...            % passes through the data
%     'MiniBatchSize', 50, ...     % how many training signals to look at, at a time
%     'InitialLearnRate', 0.001, ... % speeds up training process
%     'SequenceLength', 100, ...   % breaks signal into 1000 pieces frees up memory
%     'GradientThreshold', 1, ...   % stabalize training process
%     'plots','training-progress', ... % generates the plots
%     'Verbose',false);             % table corresponds to the data  

% net = trainNetwork(XTrain,YTrain,layers,options);
% 
% figure(1)
% trainPred = classify(net,XTrain,'SequenceLength',1400);
% plotconfusion(YTrain',trainPred','Training Accuracy');
% 
% figure(2)
% testPred = classify(net,XTest,'SequenceLength',1400);
% plotconfusion(YTest',testPred','Testing Accuracy');

fs = 300;

instfreqTrain = cellfun(@(x)instfreq(x(1,:),fs)',XTrain,'UniformOutput',false);
instfreqTest = cellfun(@(x)instfreq(x(1,:),fs)',XTest,'UniformOutput',false);

pentropyTrain = cellfun(@(x)pentropy(x(1,:),fs)',XTrain,'UniformOutput',false);
pentropyTest = cellfun(@(x)pentropy(x(1,:),fs)',XTest,'UniformOutput',false);

% instfreqTrain = cellfun(@(x)instfreq(x,fs)',XTrain,'UniformOutput',false);
% instfreqTest = cellfun(@(x)instfreq(x,fs)',XTest,'UniformOutput',false);
% 
% pentropyTrain = cellfun(@(x)pentropy(x,fs)',XTrain,'UniformOutput',false);
% pentropyTest = cellfun(@(x)pentropy(x,fs)',XTest,'UniformOutput',false);


XTrain2 = cellfun(@(x,y)[x;y],instfreqTrain,pentropyTrain,'UniformOutput',false);
XTest2 = cellfun(@(x,y)[x;y],instfreqTest,pentropyTest,'UniformOutput',false);


XV = [XTrain2{:}];
mu = mean(XV,2);
sg = std(XV,[],2);


XTrainSD = XTrain2;
XTrainSD = cellfun(@(x)(x-mu)./sg,XTrainSD,'UniformOutput',false);

XTestSD = XTest2;
XTestSD = cellfun(@(x)(x-mu)./sg,XTestSD,'UniformOutput',false);


layers = [ ...
    sequenceInputLayer(2)
    bilstmLayer(100,'OutputMode','last')
    fullyConnectedLayer(5)
    softmaxLayer
    classificationLayer
    ];


options = trainingOptions('adam', ...
    'MaxEpochs',30, ...
    'MiniBatchSize', 150, ...
    'InitialLearnRate', 0.01, ...
    'GradientThreshold', 1, ...
    'plots','training-progress', ...
    'Verbose',false);

net2 = trainNetwork(XTrainSD,YTrain,layers,options);

figure(3)
trainPred2 = classify(net2,XTrainSD);
plotconfusion(YTrain',trainPred2','Training Accuracy');

figure(4)
testPred2 = classify(net2,XTestSD);
plotconfusion(YTest',testPred2','Testing Accuracy');


















