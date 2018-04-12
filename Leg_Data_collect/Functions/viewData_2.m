clear;
clc
close all;

set(0, 'DefaultFigureWindowStyle','docked');
%readData(); %read and save as .mat then load it in.
load('LegData_23.mat');

%global variabls:
numSamples = 200;
numClasses = 5;
%% Plotting Raw Data
plotData();


%% Wavelets

kickIn = kickInC4(:,1);
kickOut = kickOutC4(:,1);
Dorsiflexion = DorsiflexionC4(:,1);
plantarflexion = PlantarflexionC4(:,1);
rest = Rest4(:,1);

[kickInWave,l] = wavedec(kickIn,3,'db2');
KickInapprox = appcoef(kickInWave,l,'db2');
[KI1,KI2,KI3] = detcoef(kickInWave,l,[1 2 3]);
figure(6);
subplot(5,1,1);
plot(kickIn);
title('Kick In: Original');
subplot(5,1,2)
plot(KickInapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(KI3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(KI2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(KI1)
title('Level 1 Detail Coefficients')


[kickOutWave,l] = wavedec(kickOut,3,'db2');
KickOutapprox = appcoef(kickOutWave,l,'db2');
[KO1,KO2,KO3] = detcoef(kickOutWave,l,[1 2 3]);
figure(7);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(kickOut);
title('Kick Out: Original');
subplot(5,1,2)
plot(KickOutapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(KO3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(KO2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(KO1)
title('Level 1 Detail Coefficients')

[DorsiflexionWave,l] = wavedec(Dorsiflexion,3,'db2');
Dorsiflexionapprox = appcoef(DorsiflexionWave,l,'db2');
[D1,D2,D3] = detcoef(DorsiflexionWave,l,[1 2 3]);
figure(8);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(Dorsiflexion);
title('Dorsiflexion: Original');
subplot(5,1,2)
plot(Dorsiflexionapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(D3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(D2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(D1)
title('Level 1 Detail Coefficients')

[PlantarflexionWave,l] = wavedec(plantarflexion,3,'db2');
Plantarflexionapprox = appcoef(PlantarflexionWave,l,'db2');
[P1,P2,P3] = detcoef(PlantarflexionWave,l,[1 2 3]);
figure(9);
set(gcf,'Position',get(0,'Screensize'));
subplot(5,1,1);
plot(plantarflexion);
title('Plantarflexion: Original');
subplot(5,1,2)
plot(Plantarflexionapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(P3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(P2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(P1)
title('Level 1 Detail Coefficients')

[restWave,l] = wavedec(rest,3,'db2');
restapprox = appcoef(restWave,l,'db2');
[r1,r2,r3] = detcoef(restWave,l,[1 2 3]);
figure(10);
subplot(5,1,1);
plot(rest);
title('rest: Original');
subplot(5,1,2)
plot(restapprox)
title('Approximation Coefficients')
subplot(5,1,3)
plot(r3)
title('Level 3 Detail Coefficients')
subplot(5,1,4)
plot(r2)
title('Level 2 Detail Coefficients')
subplot(5,1,5)
plot(r1)
title('Level 1 Detail Coefficients')


%% Calculate FFT's

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

%% Power Spectral Density

rng default
Fs = 960;
t = 0:1/Fs:1-1/Fs;

%Rest
x1 = Rest1;
N = length(x1);
xdft = fft(x1);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x1):Fs/2;
figure(16)
subplot(2,2,1);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x1,rectwin(length(x1)),length(x1),Fs);
title('Periodogram Using FFT RestC1')
mxerr(1,:) = max(psdx'-periodogram(x1,rectwin(length(x1)),length(x1),Fs));
%psdxSum_Rest1 = sum(10*log10(psdx))

x2 = Rest2;
N = length(x2);
xdft = fft(x2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x2):Fs/2;
subplot(2,2,2);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x2,rectwin(length(x2)),length(x2),Fs)
title('Periodogram Using FFT RestC2')
mxerr(2,:) = max(psdx'-periodogram(x2,rectwin(length(x2)),length(x2),Fs));
psdxSum_Rest2 = sum(10*log10(psdx));

x3 = Rest3;
N = length(x3);
xdft = fft(x3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x3):Fs/2;
subplot(2,2,3);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x3,rectwin(length(x3)),length(x3),Fs)
title('Periodogram Using FFT RestC3')
mxerr(3,:) = max(psdx'-periodogram(x3,rectwin(length(x3)),length(x3),Fs));
psdxSum_Rest3 = sum(10*log10(psdx));

x4 = Rest4;
N = length(x4);
xdft = fft(x4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x4):Fs/2;
subplot(2,2,4);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x4,rectwin(length(x4)),length(x4),Fs)
title('Periodogram Using FFT RestC4')
mxerr(4,:) = max(psdx'-periodogram(x4,rectwin(length(x4)),length(x4),Fs));
psdxSum_Rest4 = sum(10*log10(psdx));


%kick in
x5 = kickInC1;
N = length(x5);
xdft = fft(x5);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(x5):Fs/2;
figure(17)
subplot(2,2,1);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x5,rectwin(length(x5)),length(x5),Fs)
title('Periodogram Using FFT Kick In C1')
mxerr(5,:) = max(psdx'-periodogram(x5,rectwin(length(x5)),length(x5),Fs));
psdxSum_KickIn1 = sum(10*log10(psdx));

x6 = kickInC2;
N = length(x6);
xdft = fft(x6);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(x6):Fs/2;
subplot(2,2,2);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x6,rectwin(length(x6)),length(x6),Fs)
title('Periodogram Using FFT Kick In C2')
mxerr(6,:) = max(psdx'-periodogram(x6,rectwin(length(x6)),length(x6),Fs));
psdxSum_KickIn2 = sum(10*log10(psdx));

x7 = kickInC3;
N = length(x7);
xdft = fft(x7);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(x7):Fs/2;
subplot(2,2,3);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x7,rectwin(length(x7)),length(x7),Fs)
title('Periodogram Using FFT Kick In C3')
mxerr(7,:) = max(psdx'-periodogram(x7,rectwin(length(x7)),length(x7),Fs));
psdxSum_KickIn3 = sum(10*log10(psdx));

x8 = kickInC4;
N = length(x8);
xdft = fft(x8);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(x8):Fs/2;
subplot(2,2,4);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x8,rectwin(length(x8)),length(x8),Fs)
title('Periodogram Using FFT Kick In C4')
mxerr(8,:) = max(psdx'-periodogram(x8,rectwin(length(x8)),length(x8),Fs));
psdxSum_KickIn4 = sum(10*log10(psdx));


%kick out
x9 = kickOutC1;
N = length(x9);
xdft = fft(x9);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x9):Fs/2;
figure(18)
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x9,rectwin(length(x9)),length(x9),Fs)
title('Periodogram Using FFT Kick Out C1')
mxerr2(9,:) = max(psdx'-periodogram(x9,rectwin(length(x9)),length(x9),Fs));
psdxSum_KickOut1 = sum(10*log10(psdx));

x10 = kickOutC2;
N = length(x10);
xdft = fft(x10);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x10):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x10,rectwin(length(x10)),length(x10),Fs)
title('Periodogram Using FFT Kick Out C2')
mxerr2(10,:) = max(psdx'-periodogram(x10,rectwin(length(x10)),length(x10),Fs));
psdxSum_KickOut2 = sum(10*log10(psdx));

x11 = kickOutC3;
N = length(x11);
xdft = fft(x11);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x11):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x11,rectwin(length(x11)),length(x11),Fs)
title('Periodogram Using FFT Kick Out C3')
mxerr2(11,:) = max(psdx'-periodogram(x11,rectwin(length(x11)),length(x11),Fs));
psdxSum_KickOut3 = sum(10*log10(psdx));

x12 = kickOutC4;
N = length(x12);
xdft = fft(x12);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x12):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x12,rectwin(length(x12)),length(x12),Fs)
title('Periodogram Using FFT Kick Out C4')
mxerr2(12,:) = max(psdx'-periodogram(x12,rectwin(length(x12)),length(x12),Fs));
psdxSum_KickOut4 = sum(10*log10(psdx));


%plantar flexion
x13 = PlantarflexionC1;
N = length(x13);
xdft = fft(x13);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x13):Fs/2;
figure(19)
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C1 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x13,rectwin(length(x13)),length(x13),Fs)
title('Periodogram Using FFT Plantar C1 (down)')
mxerr3(13,:) = max(psdx'-periodogram(x13,rectwin(length(x13)),length(x13),Fs));
psdxSum_Plant1 = sum(10*log10(psdx));

x14 = PlantarflexionC2;
N = length(x14);
xdft = fft(x14);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x14):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C2 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x14,rectwin(length(x14)),length(x14),Fs)
title('Periodogram Using FFT Plantar C2 (down)')
mxerr3(14,:) = max(psdx'-periodogram(x14,rectwin(length(x14)),length(x14),Fs));
psdxSum_Plant2 = sum(10*log10(psdx));

x15 = PlantarflexionC3;
N = length(x15);
xdft = fft(x15);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x15):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C3 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x15,rectwin(length(x15)),length(x15),Fs)
title('Periodogram Using FFT Plantar C3 (down)')
mxerr3(15,:) = max(psdx'-periodogram(x15,rectwin(length(x15)),length(x15),Fs));
psdxSum_Plant3 = sum(10*log10(psdx));

x16 = PlantarflexionC4;
N = length(x16);
xdft = fft(x16);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x16):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C4 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x16,rectwin(length(x16)),length(x16),Fs)
title('Periodogram Using FFT Plantar C4 (down)')
mxerr3(16,:) = max(psdx'-periodogram(x16,rectwin(length(x16)),length(x16),Fs));
psdxSum_Plant4 = sum(10*log10(psdx));

%dorsi flexion
x17 = DorsiflexionC1;
N = length(x17);
xdft = fft(x17);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x17):Fs/2;
figure(20)
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C1 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x17,rectwin(length(x17)),length(x17),Fs)
title('Periodogram Using FFT Dorsi C1 (up)')
mxerr(17,:) = max(psdx'-periodogram(x17,rectwin(length(x17)),length(x17),Fs));
psdxSum_Dorsi1 = sum(10*log10(psdx));

x18 = DorsiflexionC2;
N = length(x18);
xdft = fft(x18);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x18):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C2 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x18,rectwin(length(x18)),length(x18),Fs)
title('Periodogram Using FFT Dorsi C2 (up)')
mxerr(18,:) = max(psdx'-periodogram(x18,rectwin(length(x18)),length(x18),Fs));
psdxSum_Dorsi2 = sum(10*log10(psdx));

x19 = DorsiflexionC3;
N = length(x19);
xdft = fft(x19);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x19):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C3 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x19,rectwin(length(x19)),length(x19),Fs)
title('Periodogram Using FFT Dorsi C3 (up)')
mxerr(19,:) = max(psdx'-periodogram(x19,rectwin(length(x19)),length(x19),Fs));
psdxSum_Dorsi3 = sum(10*log10(psdx));

x20 = DorsiflexionC4;
N = length(x20);
xdft = fft(x20);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(x20):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C4 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(x20,rectwin(length(x20)),length(x20),Fs)
title('Periodogram Using FFT Dorsi C4 (up)')
mxerr(20,:) = max(psdx'-periodogram(x20,rectwin(length(x20)),length(x20),Fs));
psdxSum_Dorsi4 = sum(10*log10(psdx));

%% SVM
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

