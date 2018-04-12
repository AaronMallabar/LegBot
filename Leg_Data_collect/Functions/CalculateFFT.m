function [] = CalculateFFT()
Fs = 960;
channelNumbers = 5;

t = (0:length(Rest4(:,1))-1)/Fs;
Lt=length(t);
f=(-Lt/2+1:Lt/2)*Fs/Lt;

fft_1 = abs(fftshift(fft(Rest1)))/Lt;
fft_2 = abs(fftshift(fft(Rest2)))/Lt;
fft_3 = abs(fftshift(fft(Rest3)))/Lt;
fft_4 = abs(fftshift(fft(Rest4)))/Lt;
fft_5 = abs(fftshift(fft(kickInC1)))/Lt;
fft_6 = abs(fftshift(fft(kickInC2)))/Lt;
fft_7 = abs(fftshift(fft(kickInC3)))/Lt;
fft_8 = abs(fftshift(fft(kickInC4)))/Lt;
fft_9 = abs(fftshift(fft(kickOutC1)))/Lt;
fft_10 = abs(fftshift(fft(kickOutC2)))/Lt;
fft_11 = abs(fftshift(fft(kickOutC3)))/Lt;
fft_12 = abs(fftshift(fft(kickOutC4)))/Lt;
fft_13 = abs(fftshift(fft(PlantarflexionC1)))/Lt;
fft_14 = abs(fftshift(fft(PlantarflexionC2)))/Lt;
fft_15 = abs(fftshift(fft(PlantarflexionC3)))/Lt;
fft_16 = abs(fftshift(fft(PlantarflexionC4)))/Lt;
fft_17 = abs(fftshift(fft(DorsiflexionC1)))/Lt;
fft_18 = abs(fftshift(fft(DorsiflexionC2)))/Lt;
fft_19 = abs(fftshift(fft(DorsiflexionC3)))/Lt;
fft_20 = abs(fftshift(fft(DorsiflexionC4)))/Lt;

figure(11)
hold all
subplot(4,1,1);
plot(f, fft_1);
axis([-200 200 , 0 .01])
title('Rest1');
subplot(4,1,2);
plot(f, fft_2);
axis([-200 200 , 0 .01])
title('Rest2');
subplot(4,1,3);
plot(f, fft_3);
axis([-200 200 , 0 .01])
title('Rest3');
subplot(4,1,4);
plot(f, fft_4);
axis([-200 200 , 0 .01])
title('Rest4');

figure(12)
subplot(4,1,1);
plot(f, fft_5);
axis([-200 200 , 0 .05])
title('kickInC1');
subplot(4,1,2);
plot(f, fft_6);
axis([-200 200 , 0 .05])
title('kickInC2');
subplot(4,1,3);
plot(f, fft_7);
axis([-200 200 , 0 .05])
title('kickInC3');
subplot(4,1,4);
plot(f, fft_8);
axis([-200 200 , 0 .05])
title('kickInC4');

figure(13)
subplot(4,1,1);
plot(f, fft_9);
axis([-200 200 , 0 .05])
title('kickOutC1');
subplot(4,1,2);
plot(f, fft_10);
axis([-200 200 , 0 .05])
title('kickOutC2');
subplot(4,1,3);
plot(f, fft_11);
axis([-200 200 , 0 .05])
title('kickOutC3');
subplot(4,1,4);
plot(f, fft_12);
axis([-200 200 , 0 .05])
title('kickOutC4');

figure(14)
subplot(4,1,1);
plot(f, fft_13);
axis([-200 200 , 0 .01])
title('PlantarflexionC1');
subplot(4,1,2);
plot(f, fft_14);
axis([-200 200 , 0 .01])
title('PlantarflexionC2');
subplot(4,1,3);
plot(f, fft_15);
axis([-200 200 , 0 .01])
title('PlantarflexionC3');
subplot(4,1,4);
plot(f, fft_16);
axis([-200 200 , 0 .01])
title('PlantarflexionC4');

figure(15)
subplot(4,1,1);
plot(f, fft_17);
axis([-200 200 , 0 .01])
title('DorsiflexionC1');
subplot(4,1,2);
plot(f, fft_18);
axis([-200 200 , 0 .01])
title('DorsiflexionC2');
subplot(4,1,3);
plot(f, fft_19);
axis([-200 200 , 0 .01])
title('DorsiflexionC3');
subplot(4,1,4);
plot(f, fft_20);
axis([-200 200 , 0 .01])
title('DorsiflexionC4');

end

