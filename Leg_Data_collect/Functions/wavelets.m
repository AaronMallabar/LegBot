function [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNumIn] = ...
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
    
    

end
end

