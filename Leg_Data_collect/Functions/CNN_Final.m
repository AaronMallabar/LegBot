



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
TRAIN_DATA = cell(160,1);
TEST_DATA = cell(40,1);

i = 0;
L = 0;
for i = 1:200
    Tran_DATA{i} = DATA_file{i}';
    

    
end 


FILE1 = cell(160,1);
CATE1 = cell(160,1);

CATE2 = cell(40,1);
FILE2 = cell(40,1);

for L = 1:200

    for L = 1:32
        TRAIN_DATA{L} = Tran_DATA{L};
        FILE1{L} = File_org{L};
        CATE1{L} = CATname{L};
    end
    
    for L = 33:40
        TEST_DATA{L-32} = Tran_DATA{L};
        FILE2{L-32} = File_org{L};
        CATE2{L-32} = CATname{L};
    end
    
    for L = 41:72
        TRAIN_DATA{L-8} = Tran_DATA{L};
                FILE1{L-8} = File_org{L};
        CATE1{L-8} = CATname{L};
    end
    
    for L = 73:80
        TEST_DATA{L-64} = Tran_DATA{L};
                FILE2{L-64} = File_org{L};
        CATE2{L-64} = CATname{L};
    end
    
    for L = 81:112
        TRAIN_DATA{L-16} = Tran_DATA{L};
                FILE1{L-16} = File_org{L};
        CATE1{L-16} = CATname{L};
    end
    
    for L = 113:120
        TEST_DATA{L -96} = Tran_DATA{L};
                FILE2{L-96} = File_org{L};
        CATE2{L-96} = CATname{L};
    end
    
    for L = 121:152
         TRAIN_DATA{L-24} = Tran_DATA{L};
                 FILE1{L-24} = File_org{L};
        CATE1{L-24} = CATname{L};
    end
    
    for L = 153:160
         TEST_DATA{L-128} = Tran_DATA{L};
                 FILE2{L-128} = File_org{L};
        CATE2{L-128} = CATname{L};
    end
    
    for L = 161:192
        TRAIN_DATA{L-32} = Tran_DATA{L};
                FILE1{L-32} = File_org{L};
        CATE1{L-32} = CATname{L};
    end
    
    for L = 193:200
         TEST_DATA{L-160} = Tran_DATA{L};
                 FILE2{L-160} = File_org{L};
        CATE2{L-160} = CATname{L};
    end
end

    



%% Create 20,000 samples from random of 200





SAMPLE = 5000*0.7;   
SAMPLE2 = 5000*0.3;
file = cell(SAMPLE,1);
file_1 = cell(SAMPLE2,1);
Signal = cell(SAMPLE,1);
Signal_1 = cell(SAMPLE2,1);
label = cell(SAMPLE,1);
label_1 = cell(SAMPLE2,1);

 A1 = 0;
 B1 = 0;
 C1 = 0;
 D1 = 0;
 E1 = 0;
 A1_1 = 0;
 B1_1 = 0;
 C1_1 = 0;
 D1_1 = 0;
 E1_1 = 0;
 
for RUN =1:SAMPLE
    a = randi(160,1);
    file{RUN} = FILE1{a};        % File_org is the file name number
    Signal{RUN} = TRAIN_DATA{a};            % Tran_DATA is the signal
    label{RUN} = CATE1{a};                %  CATname is the label 
    
    
    if (1 <= a) && (a <= 32)
              
        A1 = A1+1;
        
    end
       
    if (33 <= a) && (a <= 64)
        B1 = B1+1;
        
    end
        
    if (65 <= a) && (a <=96 )
        C1 = C1+1;
        
    end
        
    if (97 <= a) && (a <= 128)
        D1 = D1+1;
        
    end
        
    if (129 <= a) && (a <= 160)
        E1 = E1+1;
        
    end
    
end 


for RUN =1:SAMPLE2
    a = randi(40,1);
    file_1{RUN} = FILE2{a};        % File_org is the file name number
    Signal_1{RUN} = TEST_DATA{a};            % Tran_DATA is the signal
    label_1{RUN} = CATE2{a};                %  CATname is the label 
    
    
    if (1 <= a) && (a <= 8)
              
        A1_1 = A1_1+1;
        
    end
       
    if (9 <= a) && (a <= 16)
        B1_1 = B1_1+1;
        
    end
        
    if (17 <= a) && (a <=24 )
        C1_1 = C1_1+1;
        
    end
        
    if (25 <= a) && (a <= 32)
        D1_1 = D1_1+1;
        
    end
        
    if (33 <= a) && (a <= 40)
        E1_1 = E1_1+1;
        
    end
    
end 

Filename = categorical(file);
Label = categorical(label);

Filename1 = categorical(file_1);
Label1 = categorical(label_1);

  DATA_CNN = table(Filename,Label,Signal); % works for creating 100 rows
  DATA_CNN.Properties.VariableNames={'FileName','Label','Signal'}; 
  
    DATA_CNN = table(Filename1,Label1,Signal_1); % works for creating 100 rows
  DATA_CNN.Properties.VariableNames={'FileName1','Label_1','Signal_1'}; 
 
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
  
 KickOutA1 = Signal_1(Label1 == 'Kick Out');
 KickOutB1 = Label1(Label1 == 'Kick Out');
 
 KickInA1 = Signal_1(Label1 == 'Kick In');
 KickInB1 = Label1(Label1  == 'Kick In');
 
 DorsA1 = Signal_1(Label1 == 'Dorsiflexion');
 DorsB1 = Label1(Label1 == 'Dorsiflexion');
 
 PlantA1 = Signal_1(Label1 == 'Plantarflexion');
 PlantB1 = Label1(Label1 == 'Plantarflexion');
 
 RelaxA1 = Signal_1(Label1 == 'Relax');
 RelaxB1 = Label1(Label1 == 'Relax');
 
[trainIndKickOut,~,testIndKickOut] = dividerand(B1,1,0.0,0.0);
[trainIndKickIn,~,testIndKickIn] = dividerand(C1,1,0.0,0.0);
[trainIndDors,~,testIndDors] = dividerand(A1,1,0.0,0.0);
[trainIndPlant,~,testIndPlant] = dividerand(D1,1,0.0,0.0);
[trainIndRelax,~,testIndRelax] = dividerand(E1,1,0.0,0.0);


[trainIndKickOut1,~,testIndKickOut1] = dividerand(B1_1,1.0,0.0,0.0);
[trainIndKickIn1,~,testIndKickIn1] = dividerand(C1_1,1.0,0.0,0.0);
[trainIndDors1,~,testIndDors1] = dividerand(A1_1,1.0,0.0,0.0);
[trainIndPlant1,~,testIndPlant1] = dividerand(D1_1,1.0,0.0,0.0);
[trainIndRelax1,~,testIndRelax1] = dividerand(E1_1,1.0,0.0,0.0);
 
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

ATestKickOut = KickOutA1(trainIndKickOut1);
BTestKickOut = KickOutB1(trainIndKickOut1);

ATestKickIn =  KickInA1(trainIndKickIn1);
BTestKickIn =  KickInB1(trainIndKickIn1);

ATestDors =  DorsA1(trainIndDors1);
BTestDors =  DorsB1(trainIndDors1);

ATestPlant =  PlantA1(trainIndPlant1);
BTestPlant =  PlantB1(trainIndPlant1);

ATestRelax =  RelaxA1(trainIndRelax1);
BTestRelax =  RelaxB1(trainIndRelax1);

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

XTest = [ATestKickOut(1:length(trainIndKickOut1));ATestKickIn(1:length(trainIndKickIn1)); ATestDors(1:length(trainIndDors1));ATestPlant(1:length(trainIndPlant1));...
    ATestRelax(1:length(trainIndRelax1))];
YTest = [BTestKickOut(1:length(trainIndKickOut1));BTestKickIn(1:length(trainIndKickIn1)); BTestDors(1:length(trainIndDors1));BTestPlant(1:length(trainIndPlant1));...
    BTestRelax(1:length(trainIndRelax1))];
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
    'MaxEpochs',100, ...
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


















