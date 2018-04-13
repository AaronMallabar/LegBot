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

end

