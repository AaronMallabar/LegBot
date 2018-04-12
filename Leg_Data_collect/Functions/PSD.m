function [] = PSD()
%rng default
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
end

