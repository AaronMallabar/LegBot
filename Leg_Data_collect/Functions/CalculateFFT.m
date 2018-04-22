function [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum] = CalculateFFT(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum)

Fs = 960;
t = (0:length(Rest.C4(:,1))-1)/Fs;
Lt=length(t);
f=(-Lt/2+1:Lt/2)*Fs/Lt;

Rest.FFT_C1 = abs(fftshift(fft(Rest.C1)))/Lt;
Rest.FFT_C2 = abs(fftshift(fft(Rest.C2)))/Lt;
Rest.FFT_C3 = abs(fftshift(fft(Rest.C3)))/Lt;
Rest.FFT_C4 = abs(fftshift(fft(Rest.C4)))/Lt;

kickIn.FFT_C1 = abs(fftshift(fft(kickIn.C1)))/Lt;
kickIn.FFT_C2 = abs(fftshift(fft(kickIn.C2)))/Lt;
kickIn.FFT_C3 = abs(fftshift(fft(kickIn.C3)))/Lt;
kickIn.FFT_C4 = abs(fftshift(fft(kickIn.C4)))/Lt;

kickOut.FFT_C1 = abs(fftshift(fft(kickOut.C1)))/Lt;
kickOut.FFT_C2 = abs(fftshift(fft(kickOut.C2)))/Lt;
kickOut.FFT_C3 = abs(fftshift(fft(kickOut.C3)))/Lt;
kickOut.FFT_C4 = abs(fftshift(fft(kickOut.C4)))/Lt;

Plantarflexion.FFT_C1 = abs(fftshift(fft(Plantarflexion.C1)))/Lt;
Plantarflexion.FFT_C2 = abs(fftshift(fft(Plantarflexion.C2)))/Lt;
Plantarflexion.FFT_C3 = abs(fftshift(fft(Plantarflexion.C3)))/Lt;
Plantarflexion.FFT_C4 = abs(fftshift(fft(Plantarflexion.C4)))/Lt;

Dorsiflexion.FFT_C1 = abs(fftshift(fft(Dorsiflexion.C1)))/Lt;
Dorsiflexion.FFT_C2 = abs(fftshift(fft(Dorsiflexion.C2)))/Lt;
Dorsiflexion.FFT_C3 = abs(fftshift(fft(Dorsiflexion.C3)))/Lt;
Dorsiflexion.FFT_C4 = abs(fftshift(fft(Dorsiflexion.C4)))/Lt;

%% Get sums from certain range

minRange = 4500;
maxRange = 5500;

for i = 1:40
    
    Rest.FFT_C1_sum(i) = sum(Rest.FFT_C1(minRange:maxRange,i));
    Rest.FFT_C2_sum(i) = sum(Rest.FFT_C2(minRange:maxRange,i));
    Rest.FFT_C3_sum(i) = sum(Rest.FFT_C3(minRange:maxRange,i));
    Rest.FFT_C4_sum(i) = sum(Rest.FFT_C4(minRange:maxRange,i));
    
    kickIn.FFT_C1_sum(i) = sum(kickIn.FFT_C1(minRange:maxRange,i));
    kickIn.FFT_C2_sum(i) = sum(kickIn.FFT_C2(minRange:maxRange,i));
    kickIn.FFT_C3_sum(i) = sum(kickIn.FFT_C3(minRange:maxRange,i));
    kickIn.FFT_C4_sum(i) = sum(kickIn.FFT_C4(minRange:maxRange,i));
    
    kickOut.FFT_C1_sum(i) = sum(kickOut.FFT_C1(minRange:maxRange,i));
    kickOut.FFT_C2_sum(i) = sum(kickOut.FFT_C2(minRange:maxRange,i));
    kickOut.FFT_C3_sum(i) = sum(kickOut.FFT_C3(minRange:maxRange,i));
    kickOut.FFT_C4_sum(i) = sum(kickOut.FFT_C4(minRange:maxRange,i));
    
    Plantarflexion.FFT_C1_sum(i) = sum(Plantarflexion.FFT_C1(minRange:maxRange,i));
    Plantarflexion.FFT_C2_sum(i) = sum(Plantarflexion.FFT_C2(minRange:maxRange,i));
    Plantarflexion.FFT_C3_sum(i) = sum(Plantarflexion.FFT_C3(minRange:maxRange,i));
    Plantarflexion.FFT_C4_sum(i) = sum(Plantarflexion.FFT_C4(minRange:maxRange,i));
    
    Dorsiflexion.FFT_C1_sum(i) = sum(Dorsiflexion.FFT_C1(minRange:maxRange,i));
    Dorsiflexion.FFT_C2_sum(i) = sum(Dorsiflexion.FFT_C2(minRange:maxRange,i));
    Dorsiflexion.FFT_C3_sum(i) = sum(Dorsiflexion.FFT_C3(minRange:maxRange,i));
    Dorsiflexion.FFT_C4_sum(i) = sum(Dorsiflexion.FFT_C4(minRange:maxRange,i));
    
end

Rest.FFT_sum = [Rest.FFT_C1_sum', Rest.FFT_C2_sum', Rest.FFT_C3_sum', Rest.FFT_C4_sum'];
kickIn.FFT_sum = [kickIn.FFT_C1_sum', kickIn.FFT_C2_sum', kickIn.FFT_C3_sum', kickIn.FFT_C4_sum'];
kickOut.FFT_sum = [kickOut.FFT_C1_sum', kickOut.FFT_C2_sum', kickOut.FFT_C3_sum', kickOut.FFT_C4_sum'];
Plantarflexion.FFT_sum = [Plantarflexion.FFT_C1_sum', Plantarflexion.FFT_C2_sum', Plantarflexion.FFT_C3_sum', Plantarflexion.FFT_C4_sum'];
Dorsiflexion.FFT_sum = [Dorsiflexion.FFT_C1_sum', Dorsiflexion.FFT_C2_sum', Dorsiflexion.FFT_C3_sum', Dorsiflexion.FFT_C4_sum'];

%% get mean frequency (MNF)

for i = 1:40
    Rest.FFT_C1_MNF(i) = sum(Rest.FFT_C1(:,i).*f(:))./sum(Rest.FFT_C1(:,i));
    Rest.FFT_C2_MNF(i) = sum(Rest.FFT_C2(:,i).*f(:))./sum(Rest.FFT_C2(:,i));
    Rest.FFT_C3_MNF(i) = sum(Rest.FFT_C3(:,i).*f(:))./sum(Rest.FFT_C3(:,i));
    Rest.FFT_C4_MNF(i) = sum(Rest.FFT_C4(:,i).*f(:))./sum(Rest.FFT_C4(:,i));
    
    kickIn.FFT_C1_MNF(i) = sum(kickIn.FFT_C1(:,i).*f(:))./sum(kickIn.FFT_C1(:,i));
    kickIn.FFT_C2_MNF(i) = sum(kickIn.FFT_C2(:,i).*f(:))./sum(kickIn.FFT_C2(:,i));
    kickIn.FFT_C3_MNF(i) = sum(kickIn.FFT_C3(:,i).*f(:))./sum(kickIn.FFT_C3(:,i));
    kickIn.FFT_C4_MNF(i) = sum(kickIn.FFT_C4(:,i).*f(:))./sum(kickIn.FFT_C4(:,i));
    
    kickOut.FFT_C1_MNF(i) = sum(kickOut.FFT_C1(:,i).*f(:))./sum(kickOut.FFT_C1(:,i));
    kickOut.FFT_C2_MNF(i) = sum(kickOut.FFT_C2(:,i).*f(:))./sum(kickOut.FFT_C2(:,i));
    kickOut.FFT_C3_MNF(i) = sum(kickOut.FFT_C3(:,i).*f(:))./sum(kickOut.FFT_C3(:,i));
    kickOut.FFT_C4_MNF(i) = sum(kickOut.FFT_C4(:,i).*f(:))./sum(kickOut.FFT_C4(:,i));
    
    Plantarflexion.FFT_C1_MNF(i) = sum(Plantarflexion.FFT_C1(:,i).*f(:))./sum(Plantarflexion.FFT_C1(:,i));
    Plantarflexion.FFT_C2_MNF(i) = sum(Plantarflexion.FFT_C2(:,i).*f(:))./sum(Plantarflexion.FFT_C2(:,i));
    Plantarflexion.FFT_C3_MNF(i) = sum(Plantarflexion.FFT_C3(:,i).*f(:))./sum(Plantarflexion.FFT_C3(:,i));
    Plantarflexion.FFT_C4_MNF(i) = sum(Plantarflexion.FFT_C4(:,i).*f(:))./sum(Plantarflexion.FFT_C4(:,i));
    
    Dorsiflexion.FFT_C1_MNF(i) = sum(Dorsiflexion.FFT_C1(:,i).*f(:))./sum(Dorsiflexion.FFT_C1(:,i));
    Dorsiflexion.FFT_C2_MNF(i) = sum(Dorsiflexion.FFT_C2(:,i).*f(:))./sum(Dorsiflexion.FFT_C2(:,i));
    Dorsiflexion.FFT_C3_MNF(i) = sum(Dorsiflexion.FFT_C3(:,i).*f(:))./sum(Dorsiflexion.FFT_C3(:,i));
    Dorsiflexion.FFT_C4_MNF(i) = sum(Dorsiflexion.FFT_C4(:,i).*f(:))./sum(Dorsiflexion.FFT_C4(:,i));
end

Rest.FFT_MNF = [Rest.FFT_C1_MNF', Rest.FFT_C2_MNF', Rest.FFT_C3_MNF', Rest.FFT_C4_MNF'];
kickIn.FFT_MNF = [kickIn.FFT_C1_MNF', kickIn.FFT_C2_MNF', kickIn.FFT_C3_MNF', kickIn.FFT_C4_MNF'];
kickOut.FFT_MNF = [kickOut.FFT_C1_MNF', kickOut.FFT_C2_MNF', kickOut.FFT_C3_MNF', kickOut.FFT_C4_MNF'];
Plantarflexion.FFT_MNF = [Plantarflexion.FFT_C1_MNF', Plantarflexion.FFT_C2_MNF', Plantarflexion.FFT_C3_MNF', Plantarflexion.FFT_C4_MNF'];
Dorsiflexion.FFT_MNF = [Dorsiflexion.FFT_C1_MNF', Dorsiflexion.FFT_C2_MNF', Dorsiflexion.FFT_C3_MNF', Dorsiflexion.FFT_C4_MNF'];

%% plot FFTs

figure(figureNum); figureNum = figureNum+1;
hold all
subplot(4,1,1);
plot(f, Rest.FFT_C1);
axis([-200 200 , 0 .01])
title('Rest1');
subplot(4,1,2);
plot(f, Rest.FFT_C2);
axis([-200 200 , 0 .01])
title('Rest2');
subplot(4,1,3);
plot(f, Rest.FFT_C3);
axis([-200 200 , 0 .01])
title('Rest3');
subplot(4,1,4);
plot(f, Rest.FFT_C4);
axis([-200 200 , 0 .01])
title('Rest4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(f, kickIn.FFT_C1);
axis([-200 200 , 0 .05])
title('kickInC1');
subplot(4,1,2);
plot(f, kickIn.FFT_C2);
axis([-200 200 , 0 .05])
title('kickInC2');
subplot(4,1,3);
plot(f, kickIn.FFT_C3);
axis([-200 200 , 0 .05])
title('kickInC3');
subplot(4,1,4);
plot(f, kickIn.FFT_C4);
axis([-200 200 , 0 .05])
title('kickInC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(f, kickOut.FFT_C1);
axis([-200 200 , 0 .05])
title('kickOutC1');
subplot(4,1,2);
plot(f, kickOut.FFT_C2);
axis([-200 200 , 0 .05])
title('kickOutC2');
subplot(4,1,3);
plot(f, kickOut.FFT_C3);
axis([-200 200 , 0 .05])
title('kickOutC3');
subplot(4,1,4);
plot(f, kickOut.FFT_C4);
axis([-200 200 , 0 .05])
title('kickOutC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(f, Plantarflexion.FFT_C1);
axis([-200 200 , 0 .01])
title('PlantarflexionC1');
subplot(4,1,2);
plot(f, Plantarflexion.FFT_C1);
axis([-200 200 , 0 .01])
title('PlantarflexionC2');
subplot(4,1,3);
plot(f, Plantarflexion.FFT_C1);
axis([-200 200 , 0 .01])
title('PlantarflexionC3');
subplot(4,1,4);
plot(f, Plantarflexion.FFT_C1);
axis([-200 200 , 0 .01])
title('PlantarflexionC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(f, Dorsiflexion.FFT_C1);
axis([-200 200 , 0 .01])
title('DorsiflexionC1');
subplot(4,1,2);
plot(f, Dorsiflexion.FFT_C2);
axis([-200 200 , 0 .01])
title('DorsiflexionC2');
subplot(4,1,3);
plot(f, Dorsiflexion.FFT_C3);
axis([-200 200 , 0 .01])
title('DorsiflexionC3');
subplot(4,1,4);
plot(f, Dorsiflexion.FFT_C4);
axis([-200 200 , 0 .01])
title('DorsiflexionC4');

%%plot sums
figure(figureNum); figureNum = figureNum+1;
hold all
subplot(4,1,1);
plot(Rest.FFT_C1_sum);
title('Rest1');
subplot(4,1,2);
plot(Rest.FFT_C2_sum);
title('Rest2');
subplot(4,1,3);
plot(Rest.FFT_C3_sum);
title('Rest3');
subplot(4,1,4);
plot(Rest.FFT_C4_sum);
title('Rest4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(kickIn.FFT_C1_sum);
title('kickInC1');
subplot(4,1,2);
plot(kickIn.FFT_C2_sum);
title('kickInC2');
subplot(4,1,3);
plot(kickIn.FFT_C3_sum);
title('kickInC3');
subplot(4,1,4);
plot(kickIn.FFT_C4_sum);
title('kickInC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(kickOut.FFT_C1_sum);
title('kickOutC1');
subplot(4,1,2);
plot(kickOut.FFT_C2_sum);
title('kickOutC2');
subplot(4,1,3);
plot(kickOut.FFT_C3_sum);
title('kickOutC3');
subplot(4,1,4);
plot(kickOut.FFT_C4_sum);
title('kickOutC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(Plantarflexion.FFT_C1_sum);
title('PlantarflexionC1');
subplot(4,1,2);
plot(Plantarflexion.FFT_C1_sum);
title('PlantarflexionC2');
subplot(4,1,3);
plot(Plantarflexion.FFT_C1_sum);
title('PlantarflexionC3');
subplot(4,1,4);
plot(Plantarflexion.FFT_C1_sum);
title('PlantarflexionC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(Dorsiflexion.FFT_C1_sum);
title('DorsiflexionC1');
subplot(4,1,2);
plot(Dorsiflexion.FFT_C2_sum);
title('DorsiflexionC2');
subplot(4,1,3);
plot(Dorsiflexion.FFT_C3_sum);
title('DorsiflexionC3');
subplot(4,1,4);
plot(Dorsiflexion.FFT_C4_sum);
title('DorsiflexionC4');

%% Plot MNFs

%%plot MNFs
figure(figureNum); figureNum = figureNum+1;
hold all
subplot(4,1,1);
plot(Rest.FFT_C1_MNF);
title('Rest1');
subplot(4,1,2);
plot(Rest.FFT_C2_MNF);
title('Rest2');
subplot(4,1,3);
plot(Rest.FFT_C3_MNF);
title('Rest3');
subplot(4,1,4);
plot(Rest.FFT_C4_MNF);
title('Rest4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(kickIn.FFT_C1_MNF);
title('kickInC1');
subplot(4,1,2);
plot(kickIn.FFT_C2_MNF);
title('kickInC2');
subplot(4,1,3);
plot(kickIn.FFT_C3_MNF);
title('kickInC3');
subplot(4,1,4);
plot(kickIn.FFT_C4_MNF);
title('kickInC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(kickOut.FFT_C1_MNF);
title('kickOutC1');
subplot(4,1,2);
plot(kickOut.FFT_C2_MNF);
title('kickOutC2');
subplot(4,1,3);
plot(kickOut.FFT_C3_MNF);
title('kickOutC3');
subplot(4,1,4);
plot(kickOut.FFT_C4_MNF);
title('kickOutC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(Plantarflexion.FFT_C1_MNF);
title('PlantarflexionC1');
subplot(4,1,2);
plot(Plantarflexion.FFT_C1_MNF);
title('PlantarflexionC2');
subplot(4,1,3);
plot(Plantarflexion.FFT_C1_MNF);
title('PlantarflexionC3');
subplot(4,1,4);
plot(Plantarflexion.FFT_C1_MNF);
title('PlantarflexionC4');

figure(figureNum); figureNum = figureNum+1;
subplot(4,1,1);
plot(Dorsiflexion.FFT_C1_MNF);
title('DorsiflexionC1');
subplot(4,1,2);
plot(Dorsiflexion.FFT_C2_MNF);
title('DorsiflexionC2');
subplot(4,1,3);
plot(Dorsiflexion.FFT_C3_MNF);
title('DorsiflexionC3');
subplot(4,1,4);
plot(Dorsiflexion.FFT_C4_MNF);
title('DorsiflexionC4');

end

