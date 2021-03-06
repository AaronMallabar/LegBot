function [kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest,figureNum] = PSD(kickOut, kickIn, Dorsiflexion, Plantarflexion, Rest, figureNum)
%rng default
Fs = 960;
t = 0:1/Fs:1-1/Fs;

%Rest
%x1 = Rest1;
N = length(Rest.C1);
%xdft = fft(x1);
xdft = Rest.FFT_C1(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(Rest.FFT_C1):Fs/2;
figure(figureNum); figureNum = figureNum+1;
subplot(2,2,1);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Rest.C1,rectwin(length(Rest.C1)),length(Rest.C1),Fs);
title('Periodogram Using FFT RestC1')
mxerr(1,:) = max(psdx'-periodogram(Rest.C1,rectwin(length(Rest.C1)),length(Rest.C1),Fs));
%psdxSum_Rest1 = sum(10*log10(psdx))

%x2 = Rest2;
N = length(Rest.C2);
xdft = fft(Rest.C2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(Rest.C2):Fs/2;
subplot(2,2,2);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Rest.C2,rectwin(length(Rest.C2)),length(Rest.C2),Fs)
title('Periodogram Using FFT RestC2')
mxerr(2,:) = max(psdx'-periodogram(Rest.C2,rectwin(length(Rest.C2)),length(Rest.C2),Fs));
psdxSum_Rest2 = sum(10*log10(psdx));

%x3 = Rest3;
N = length(Rest.C3);
xdft = fft(Rest.C3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(Rest.C3):Fs/2;
subplot(2,2,3);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Rest.C3,rectwin(length(Rest.C3)),length(Rest.C3),Fs)
title('Periodogram Using FFT RestC3')
mxerr(3,:) = max(psdx'-periodogram(Rest.C3,rectwin(length(Rest.C3)),length(Rest.C3),Fs));
psdxSum_Rest3 = sum(10*log10(psdx));

%x4 = Rest4;
N = length(Rest.C4);
xdft = fft(Rest.C4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(Rest.C4):Fs/2;
subplot(2,2,4);
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT RestC4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Rest.C4,rectwin(length(Rest.C4)),length(Rest.C4),Fs)
title('Periodogram Using FFT RestC4')
mxerr(4,:) = max(psdx'-periodogram(Rest.C4,rectwin(length(Rest.C4)),length(Rest.C4),Fs));
psdxSum_Rest4 = sum(10*log10(psdx));


%kick in
%x5 = kickInC1;
N = length(kickIn.C1);
xdft = fft(kickIn.C1);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(kickIn.C1):Fs/2;
figure(figureNum); figureNum = figureNum+1;
subplot(2,2,1);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickIn.C1,rectwin(length(kickIn.C1)),length(kickIn.C1),Fs)
title('Periodogram Using FFT Kick In C1')
mxerr(5,:) = max(psdx'-periodogram(kickIn.C1,rectwin(length(kickIn.C1)),length(kickIn.C1),Fs));
psdxSum_KickIn1 = sum(10*log10(psdx));

%x6 = kickInC2;
N = length(kickIn.C2);
xdft = fft(kickIn.C2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(kickIn.C2):Fs/2;
subplot(2,2,2);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickIn.C2,rectwin(length(kickIn.C2)),length(kickIn.C2),Fs)
title('Periodogram Using FFT Kick In C2')
mxerr(6,:) = max(psdx'-periodogram(kickIn.C2,rectwin(length(kickIn.C2)),length(kickIn.C2),Fs));
psdxSum_KickIn2 = sum(10*log10(psdx));

%x7 = kickInC3;
N = length(kickIn.C3);
xdft = fft(kickIn.C3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(kickIn.C3):Fs/2;
subplot(2,2,3);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickIn.C3,rectwin(length(kickIn.C3)),length(kickIn.C3),Fs)
title('Periodogram Using FFT Kick In C3')
mxerr(7,:) = max(psdx'-periodogram(kickIn.C3,rectwin(length(kickIn.C3)),length(kickIn.C3),Fs));
psdxSum_KickIn3 = sum(10*log10(psdx));

%x8 = kickInC4;
N = length(kickIn.C4);
xdft = fft(kickIn.C4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq1 = 0:Fs/length(kickIn.C4):Fs/2;
subplot(2,2,4);
plot(freq1,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick In C4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickIn.C4,rectwin(length(kickIn.C4)),length(kickIn.C4),Fs)
title('Periodogram Using FFT Kick In C4')
mxerr(8,:) = max(psdx'-periodogram(kickIn.C4,rectwin(length(kickIn.C4)),length(kickIn.C4),Fs));
psdxSum_KickIn4 = sum(10*log10(psdx));


%kick out
%x9 = kickOutC1;
N = length(kickOut.C1);
xdft = fft(kickOut.C1);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(kickOut.C1):Fs/2;
figure(figureNum); figureNum = figureNum+1;
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C1')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickOut.C1,rectwin(length(kickOut.C1)),length(kickOut.C1),Fs)
title('Periodogram Using FFT Kick Out C1')
mxerr2(9,:) = max(psdx'-periodogram(kickOut.C1,rectwin(length(kickOut.C1)),length(kickOut.C1),Fs));
psdxSum_KickOut1 = sum(10*log10(psdx));

%x10 = kickOutC2;
N = length(kickOut.C2);
xdft = fft(kickOut.C2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(kickOut.C2):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C2')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickOut.C2,rectwin(length(kickOut.C2)),length(kickOut.C2),Fs)
title('Periodogram Using FFT Kick Out C2')
mxerr2(10,:) = max(psdx'-periodogram(kickOut.C2,rectwin(length(kickOut.C2)),length(kickOut.C2),Fs));
psdxSum_KickOut2 = sum(10*log10(psdx));

%x11 = kickOutC3;
N = length(kickOut.C3);
xdft = fft(kickOut.C3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(kickOut.C3):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C3')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickOut.C3,rectwin(length(kickOut.C3)),length(kickOut.C3),Fs)
title('Periodogram Using FFT Kick Out C3')
mxerr2(11,:) = max(psdx'-periodogram(kickOut.C3,rectwin(length(kickOut.C3)),length(kickOut.C3),Fs));
psdxSum_KickOut3 = sum(10*log10(psdx));

%x12 = kickOutC4;
N = length(kickOut.C4);
xdft = fft(kickOut.C4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(kickOut.C4):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Kick Out C4')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(kickOut.C4,rectwin(length(kickOut.C4)),length(kickOut.C4),Fs)
title('Periodogram Using FFT Kick Out C4')
mxerr2(12,:) = max(psdx'-periodogram(kickOut.C4,rectwin(length(kickOut.C4)),length(kickOut.C4),Fs));
psdxSum_KickOut4 = sum(10*log10(psdx));


%plantar flexion
%x13 = PlantarflexionC1;
N = length(Plantarflexion.C1);
xdft = fft(Plantarflexion.C1);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Plantarflexion.C1):Fs/2;
figure(figureNum); figureNum = figureNum+1;
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C1 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Plantarflexion.C1,rectwin(length(Plantarflexion.C1)),length(Plantarflexion.C1),Fs)
title('Periodogram Using FFT Plantar C1 (down)')
mxerr3(13,:) = max(psdx'-periodogram(Plantarflexion.C1,rectwin(length(Plantarflexion.C1)),length(Plantarflexion.C1),Fs));
psdxSum_Plant1 = sum(10*log10(psdx));

%x14 = PlantarflexionC2;
N = length(Plantarflexion.C2);
xdft = fft(Plantarflexion.C2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Plantarflexion.C2):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C2 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Plantarflexion.C2,rectwin(length(Plantarflexion.C2)),length(Plantarflexion.C2),Fs)
title('Periodogram Using FFT Plantar C2 (down)')
mxerr3(14,:) = max(psdx'-periodogram(Plantarflexion.C2,rectwin(length(Plantarflexion.C2)),length(Plantarflexion.C2),Fs));
psdxSum_Plant2 = sum(10*log10(psdx));

%x15 = PlantarflexionC3;
N = length(Plantarflexion.C3);
xdft = fft(Plantarflexion.C3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Plantarflexion.C3):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C3 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Plantarflexion.C3,rectwin(length(Plantarflexion.C3)),length(Plantarflexion.C3),Fs)
title('Periodogram Using FFT Plantar C3 (down)')
mxerr3(15,:) = max(psdx'-periodogram(Plantarflexion.C3,rectwin(length(Plantarflexion.C3)),length(Plantarflexion.C3),Fs));
psdxSum_Plant3 = sum(10*log10(psdx));

%x16 = PlantarflexionC4;
N = length(Plantarflexion.C4);
xdft = fft(Plantarflexion.C4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Plantarflexion.C4):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Plantar C4 (down)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Plantarflexion.C4,rectwin(length(Plantarflexion.C4)),length(Plantarflexion.C4),Fs)
title('Periodogram Using FFT Plantar C4 (down)')
mxerr3(16,:) = max(psdx'-periodogram(Plantarflexion.C4,rectwin(length(Plantarflexion.C4)),length(Plantarflexion.C4),Fs));
psdxSum_Plant4 = sum(10*log10(psdx));

%dorsi flexion
%x17 = DorsiflexionC1;
N = length(Dorsiflexion.C1);
xdft = fft(Dorsiflexion.C1);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Dorsiflexion.C1):Fs/2;
figure(figureNum); figureNum = figureNum+1;
subplot(2,2,1);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C1 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Dorsiflexion.C1,rectwin(length(Dorsiflexion.C1)),length(Dorsiflexion.C1),Fs)
title('Periodogram Using FFT Dorsi C1 (up)')
mxerr(17,:) = max(psdx'-periodogram(Dorsiflexion.C1,rectwin(length(Dorsiflexion.C1)),length(Dorsiflexion.C1),Fs));
psdxSum_Dorsi1 = sum(10*log10(psdx));

%x18 = DorsiflexionC2;
N = length(Dorsiflexion.C2);
xdft = fft(Dorsiflexion.C2);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Dorsiflexion.C2):Fs/2;
subplot(2,2,2);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C2 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Dorsiflexion.C2,rectwin(length(Dorsiflexion.C2)),length(Dorsiflexion.C2),Fs)
title('Periodogram Using FFT Dorsi C2 (up)')
mxerr(18,:) = max(psdx'-periodogram(Dorsiflexion.C2,rectwin(length(Dorsiflexion.C2)),length(Dorsiflexion.C2),Fs));
psdxSum_Dorsi2 = sum(10*log10(psdx));

%x19 = DorsiflexionC3;
N = length(Dorsiflexion.C3);
xdft = fft(Dorsiflexion.C3);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Dorsiflexion.C3):Fs/2;
subplot(2,2,3);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C3 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Dorsiflexion.C3,rectwin(length(Dorsiflexion.C3)),length(Dorsiflexion.C3),Fs)
title('Periodogram Using FFT Dorsi C3 (up)')
mxerr(19,:) = max(psdx'-periodogram(Dorsiflexion.C3,rectwin(length(Dorsiflexion.C3)),length(Dorsiflexion.C3),Fs));
psdxSum_Dorsi3 = sum(10*log10(psdx));

%x20 = DorsiflexionC4;
N = length(Dorsiflexion.C4);
xdft = fft(Dorsiflexion.C4);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq2 = 0:Fs/length(Dorsiflexion.C4):Fs/2;
subplot(2,2,4);
plot(freq2,10*log10(psdx))
grid on
title('Periodogram Using FFT Dorsi C4 (up)')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
periodogram(Dorsiflexion.C4,rectwin(length(Dorsiflexion.C4)),length(Dorsiflexion.C4),Fs)
title('Periodogram Using FFT Dorsi C4 (up)')
mxerr(20,:) = max(psdx'-periodogram(Dorsiflexion.C4,rectwin(length(Dorsiflexion.C4)),length(Dorsiflexion.C4),Fs));
psdxSum_Dorsi4 = sum(10*log10(psdx));
end

