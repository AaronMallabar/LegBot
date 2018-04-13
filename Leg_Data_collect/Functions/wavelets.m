function [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum] = ...
            wavelets(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, NumSamples, figureNumIn)
for i = 1:NumSamples
 %% kickIn 
   %Channel 1
    figureNum = figureNumIn;
    [kickInWaveC1(:,i),l(:,i)] = wavedec(kickIn.C1(:,i),3,'db2');
    KickInapproxC1(:,i) = appcoef(kickInWaveC1(:,i),l(:,i),'db2');
    [KickIn.WaveletCoeffC1L1(:,i),KickIn.WaveletCoeffC1L2(:,i),KickIn.WaveletCoeffC1L3(:,i)] ...
       = detcoef(kickInWaveC1(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickIn.C1(:,i));
    title('Kick In C1: Original');
    hold on;
    subplot(5,1,2)
    plot(KickInapproxC1(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(KickIn.WaveletCoeffC1L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(KickIn.WaveletCoeffC1L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(KickIn.WaveletCoeffC1L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickIn Channel 2
    [kickInWaveC2(:,i),l(:,i)] = wavedec(kickIn.C2(:,i),3,'db2');
    KickInapproxC2(:,i) = appcoef(kickInWaveC2(:,i),l(:,i),'db2');
    [KickIn.WaveletCoeffC2L1(:,i),KickIn.WaveletCoeffC2L2(:,i),KickIn.WaveletCoeffC2L3(:,i)] ...
       = detcoef(kickInWaveC2(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickIn.C2(:,i));
    title('Kick In C2: Original');
    hold on;
    subplot(5,1,2)
    plot(KickInapproxC2(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(KickIn.WaveletCoeffC2L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(KickIn.WaveletCoeffC2L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(KickIn.WaveletCoeffC2L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickIn Channel 3
    [kickInWaveC3(:,i),l(:,i)] = wavedec(kickIn.C3(:,i),3,'db2');
    KickInapproxC3(:,i) = appcoef(kickInWaveC3(:,i),l(:,i),'db2');
    [KickIn.WaveletCoeffC3L1(:,i),KickIn.WaveletCoeffC3L2(:,i),KickIn.WaveletCoeffC3L3(:,i)] ...
       = detcoef(kickInWaveC3(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickIn.C3(:,i));
    title('Kick In C3: Original');
    hold on;
    subplot(5,1,2)
    plot(KickInapproxC3(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(KickIn.WaveletCoeffC3L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(KickIn.WaveletCoeffC3L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(KickIn.WaveletCoeffC3L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickIn Channel 4
    [kickInWaveC4(:,i),l(:,i)] = wavedec(kickIn.C4(:,i),3,'db2');
    KickInapproxC4(:,i) = appcoef(kickInWaveC4(:,i),l(:,i),'db2');
    [KickIn.WaveletCoeffC4L1(:,i),KickIn.WaveletCoeffC4L2(:,i),KickIn.WaveletCoeffC4L3(:,i)] ...
       = detcoef(kickInWaveC4(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickIn.C4(:,i));
    title('Kick In C4: Original');
    hold on;
    subplot(5,1,2)
    plot(KickInapproxC4(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(KickIn.WaveletCoeffC4L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(KickIn.WaveletCoeffC4L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(KickIn.WaveletCoeffC4L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
   %% kickOut 
   %Channel 1
    [kickOutWaveC1(:,i),l(:,i)] = wavedec(kickOut.C1(:,i),3,'db2');
    kickOutapproxC1(:,i) = appcoef(kickOutWaveC1(:,i),l(:,i),'db2');
    [kickOut.WaveletCoeffC1L1(:,i),kickOut.WaveletCoeffC1L2(:,i),kickOut.WaveletCoeffC1L3(:,i)] ...
       = detcoef(kickOutWaveC1(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickOut.C1(:,i));
    title('Kick Out C1: Original');
    hold on;
    subplot(5,1,2)
    plot(kickOutapproxC1(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(kickOut.WaveletCoeffC1L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(kickOut.WaveletCoeffC1L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(kickOut.WaveletCoeffC1L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickOut Channel 2
    [kickOutWaveC2(:,i),l(:,i)] = wavedec(kickOut.C2(:,i),3,'db2');
    kickOutapproxC2(:,i) = appcoef(kickOutWaveC2(:,i),l(:,i),'db2');
    [kickOut.WaveletCoeffC2L1(:,i),kickOut.WaveletCoeffC2L2(:,i),kickOut.WaveletCoeffC2L3(:,i)] ...
       = detcoef(kickOutWaveC2(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickOut.C2(:,i));
    title('Kick Out C2: Original');
    hold on;
    subplot(5,1,2)
    plot(kickOutapproxC2(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(kickOut.WaveletCoeffC2L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(kickOut.WaveletCoeffC2L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(kickOut.WaveletCoeffC2L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickOut Channel 3
    [kickOutWaveC3(:,i),l(:,i)] = wavedec(kickOut.C3(:,i),3,'db2');
    kickOutapproxC3(:,i) = appcoef(kickOutWaveC3(:,i),l(:,i),'db2');
    [kickOut.WaveletCoeffC3L1(:,i),kickOut.WaveletCoeffC3L2(:,i),kickOut.WaveletCoeffC3L3(:,i)] ...
       = detcoef(kickOutWaveC3(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickOut.C3(:,i));
    title('Kick Out C3: Original');
    hold on;
    subplot(5,1,2)
    plot(kickOutapproxC3(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(kickOut.WaveletCoeffC3L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(kickOut.WaveletCoeffC3L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(kickOut.WaveletCoeffC3L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%kickOut Channel 3
    [kickOutWaveC4(:,i),l(:,i)] = wavedec(kickOut.C4(:,i),3,'db2');
    kickOutapproxC4(:,i) = appcoef(kickOutWaveC4(:,i),l(:,i),'db2');
    [kickOut.WaveletCoeffC4L1(:,i),kickOut.WaveletCoeffC4L2(:,i),kickOut.WaveletCoeffC4L3(:,i)] ...
       = detcoef(kickOutWaveC4(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(kickOut.C4(:,i));
    title('Kick Out C4: Original');
    hold on;
    subplot(5,1,2)
    plot(kickOutapproxC4(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(kickOut.WaveletCoeffC4L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(kickOut.WaveletCoeffC4L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(kickOut.WaveletCoeffC4L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
     %% Dorsiflexion
   %Channel 1
    [DorsiflexionWaveC1(:,i),l(:,i)] = wavedec(Dorsiflexion.C1(:,i),3,'db2');
    DorsiflexionapproxC1(:,i) = appcoef(DorsiflexionWaveC1(:,i),l(:,i),'db2');
    [Dorsiflexion.WaveletCoeffC1L1(:,i),Dorsiflexion.WaveletCoeffC1L2(:,i),Dorsiflexion.WaveletCoeffC1L3(:,i)] ...
       = detcoef(DorsiflexionWaveC1(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Dorsiflexion.C1(:,i));
    title('Dorsiflexion C1: Original');
    hold on;
    subplot(5,1,2)
    plot(DorsiflexionapproxC1(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Dorsiflexion.WaveletCoeffC1L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Dorsiflexion.WaveletCoeffC1L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Dorsiflexion.WaveletCoeffC1L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Dorsiflexion Channel 2
    [DorsiflexionWaveC2(:,i),l(:,i)] = wavedec(Dorsiflexion.C2(:,i),3,'db2');
    DorsiflexionapproxC2(:,i) = appcoef(DorsiflexionWaveC2(:,i),l(:,i),'db2');
    [Dorsiflexion.WaveletCoeffC2L1(:,i),Dorsiflexion.WaveletCoeffC2L2(:,i),Dorsiflexion.WaveletCoeffC2L3(:,i)] ...
       = detcoef(DorsiflexionWaveC2(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Dorsiflexion.C2(:,i));
    title('Dorsiflexion C2: Original');
    hold on;
    subplot(5,1,2)
    plot(DorsiflexionapproxC2(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Dorsiflexion.WaveletCoeffC2L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Dorsiflexion.WaveletCoeffC2L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Dorsiflexion.WaveletCoeffC2L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Dorsiflexion Channel 3
    [DorsiflexionWaveC3(:,i),l(:,i)] = wavedec(Dorsiflexion.C3(:,i),3,'db2');
    DorsiflexionapproxC3(:,i) = appcoef(DorsiflexionWaveC3(:,i),l(:,i),'db2');
    [Dorsiflexion.WaveletCoeffC3L1(:,i),Dorsiflexion.WaveletCoeffC3L2(:,i),Dorsiflexion.WaveletCoeffC3L3(:,i)] ...
       = detcoef(DorsiflexionWaveC3(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Dorsiflexion.C3(:,i));
    title('Dorsiflexion C3: Original');
    hold on;
    subplot(5,1,2)
    plot(DorsiflexionapproxC3(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Dorsiflexion.WaveletCoeffC3L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Dorsiflexion.WaveletCoeffC3L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Dorsiflexion.WaveletCoeffC3L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Dorsiflexion Channel 4
    [DorsiflexionWaveC4(:,i),l(:,i)] = wavedec(Dorsiflexion.C4(:,i),3,'db2');
    DorsiflexionapproxC4(:,i) = appcoef(DorsiflexionWaveC4(:,i),l(:,i),'db2');
    [Dorsiflexion.WaveletCoeffC4L1(:,i),Dorsiflexion.WaveletCoeffC4L2(:,i),Dorsiflexion.WaveletCoeffC4L3(:,i)] ...
       = detcoef(DorsiflexionWaveC4(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Dorsiflexion.C4(:,i));
    title('Dorsiflexion C4: Original');
    hold on;
    subplot(5,1,2)
    plot(DorsiflexionapproxC4(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Dorsiflexion.WaveletCoeffC4L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Dorsiflexion.WaveletCoeffC4L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Dorsiflexion.WaveletCoeffC4L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    
      %% Plantarflexion
   %Channel 1
    [PlantarflexionWaveC1(:,i),l(:,i)] = wavedec(Plantarflexion.C1(:,i),3,'db2');
    PlantarflexionapproxC1(:,i) = appcoef(PlantarflexionWaveC1(:,i),l(:,i),'db2');
    [Plantarflexion.WaveletCoeffC1L1(:,i),Plantarflexion.WaveletCoeffC1L2(:,i),Plantarflexion.WaveletCoeffC1L3(:,i)] ...
       = detcoef(PlantarflexionWaveC1(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Plantarflexion.C1(:,i));
    title('Plantarflexion C1: Original');
    hold on;
    subplot(5,1,2)
    plot(PlantarflexionapproxC1(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Plantarflexion.WaveletCoeffC1L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Plantarflexion.WaveletCoeffC1L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Plantarflexion.WaveletCoeffC1L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Plantarflexion Channel 2
    [PlantarflexionWaveC2(:,i),l(:,i)] = wavedec(Plantarflexion.C2(:,i),3,'db2');
    PlantarflexionapproxC2(:,i) = appcoef(PlantarflexionWaveC2(:,i),l(:,i),'db2');
    [Plantarflexion.WaveletCoeffC2L1(:,i),Plantarflexion.WaveletCoeffC2L2(:,i),Plantarflexion.WaveletCoeffC2L3(:,i)] ...
       = detcoef(PlantarflexionWaveC2(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Plantarflexion.C2(:,i));
    title('Plantarflexion C2: Original');
    hold on;
    subplot(5,1,2)
    plot(PlantarflexionapproxC2(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Plantarflexion.WaveletCoeffC2L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Plantarflexion.WaveletCoeffC2L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Plantarflexion.WaveletCoeffC2L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Plantarflexion Channel 3
    [PlantarflexionWaveC3(:,i),l(:,i)] = wavedec(Plantarflexion.C3(:,i),3,'db2');
    PlantarflexionapproxC3(:,i) = appcoef(PlantarflexionWaveC3(:,i),l(:,i),'db2');
    [Plantarflexion.WaveletCoeffC3L1(:,i),Plantarflexion.WaveletCoeffC3L2(:,i),Plantarflexion.WaveletCoeffC3L3(:,i)] ...
       = detcoef(PlantarflexionWaveC3(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Plantarflexion.C3(:,i));
    title('Plantarflexion C3: Original');
    hold on;
    subplot(5,1,2)
    plot(PlantarflexionapproxC3(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Plantarflexion.WaveletCoeffC3L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Plantarflexion.WaveletCoeffC3L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Plantarflexion.WaveletCoeffC3L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Plantarflexion Channel 4
    [PlantarflexionWaveC4(:,i),l(:,i)] = wavedec(Plantarflexion.C4(:,i),3,'db2');
    PlantarflexionapproxC4(:,i) = appcoef(PlantarflexionWaveC4(:,i),l(:,i),'db2');
    [Plantarflexion.WaveletCoeffC4L1(:,i),Plantarflexion.WaveletCoeffC4L2(:,i),Plantarflexion.WaveletCoeffC4L3(:,i)] ...
       = detcoef(PlantarflexionWaveC4(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Plantarflexion.C4(:,i));
    title('Plantarflexion C4: Original');
    hold on;
    subplot(5,1,2)
    plot(PlantarflexionapproxC4(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Plantarflexion.WaveletCoeffC4L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Plantarflexion.WaveletCoeffC4L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Plantarflexion.WaveletCoeffC4L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;

          %% Rest
   %Channel 1
    [RestWaveC1(:,i),l(:,i)] = wavedec(Rest.C1(:,i),3,'db2');
    RestapproxC1(:,i) = appcoef(RestWaveC1(:,i),l(:,i),'db2');
    [Rest.WaveletCoeffC1L1(:,i),Rest.WaveletCoeffC1L2(:,i),Rest.WaveletCoeffC1L3(:,i)] ...
       = detcoef(RestWaveC1(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Rest.C1(:,i));
    title('Rest C1: Original');
    hold on;
    subplot(5,1,2)
    plot(RestapproxC1(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Rest.WaveletCoeffC1L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Rest.WaveletCoeffC1L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Rest.WaveletCoeffC1L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Rest Channel 2
    [RestWaveC2(:,i),l(:,i)] = wavedec(Rest.C2(:,i),3,'db2');
    RestapproxC2(:,i) = appcoef(RestWaveC2(:,i),l(:,i),'db2');
    [Rest.WaveletCoeffC2L1(:,i),Rest.WaveletCoeffC2L2(:,i),Rest.WaveletCoeffC2L3(:,i)] ...
       = detcoef(RestWaveC2(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Rest.C2(:,i));
    title('Rest C2: Original');
    hold on;
    subplot(5,1,2)
    plot(RestapproxC2(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Rest.WaveletCoeffC2L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Rest.WaveletCoeffC2L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Rest.WaveletCoeffC2L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Rest Channel 3
    [RestWaveC3(:,i),l(:,i)] = wavedec(Rest.C3(:,i),3,'db2');
    RestapproxC3(:,i) = appcoef(RestWaveC3(:,i),l(:,i),'db2');
    [Rest.WaveletCoeffC3L1(:,i),Rest.WaveletCoeffC3L2(:,i),Rest.WaveletCoeffC3L3(:,i)] ...
       = detcoef(RestWaveC3(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Rest.C3(:,i));
    title('Rest C3: Original');
    hold on;
    subplot(5,1,2)
    plot(RestapproxC3(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Rest.WaveletCoeffC3L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Rest.WaveletCoeffC3L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Rest.WaveletCoeffC3L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
    
    %%Rest Channel 4
    [RestWaveC4(:,i),l(:,i)] = wavedec(Rest.C4(:,i),3,'db2');
    RestapproxC4(:,i) = appcoef(RestWaveC4(:,i),l(:,i),'db2');
    [Rest.WaveletCoeffC4L1(:,i),Rest.WaveletCoeffC4L2(:,i),Rest.WaveletCoeffC4L3(:,i)] ...
       = detcoef(RestWaveC4(:,i),l(:,i),[1 2 3]);
    figure(figureNum); figureNum = figureNum +1;
    subplot(5,1,1);
    plot(Rest.C4(:,i));
    title('Rest C4: Original');
    hold on;
    subplot(5,1,2)
    plot(RestapproxC4(:,i));
    title('Approximation Coefficients')
    hold on;
    subplot(5,1,3)
    plot(Rest.WaveletCoeffC4L3(:,i));
    title('Level 3 Detail Coefficients')
    hold on;
    subplot(5,1,4)
    plot(Rest.WaveletCoeffC4L2(:,i));
    title('Level 2 Detail Coefficients')
    hold on;
    subplot(5,1,5)
    plot(Rest.WaveletCoeffC4L1(:,i));
    title('Level 1 Detail Coefficients')
    hold on;
end
end

