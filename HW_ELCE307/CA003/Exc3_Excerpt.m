f1=10; f2=150; f3=325;
t1=4;  t2=8;   t3=12;
x1=cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);
t21=0:1/fs:t1;
t22=t1:1/fs:t2;
t23=t2:1/fs:t3;
x21=cos(2*pi*f1*t21);
x22=cos(2*pi*f2*t22);
x23=cos(2*pi*f2*t23);
x2=[x21 x22 x23];
x3=cos(2*pi*f1*t.^2);

N = 500;
fsin = 100;
fsample = 10*fsin;
tsin = 1/fsin;
t = 0:1/fsample:N/fsample;
s =sin(2*pi*t*fsin);


SpectralAnalysis 
clear
f1=10; f2=150; f3=325;
t1=2;  t2=3;   t3=5;
fsample=325*1;
fs=fsample;
t = 0:1/fs:t3;
x1=cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);
plot(x1)
fftSignal = fft(x1);
n = length(x1);          % number of samples
f = (0:n-1)*(fs/n);     % frequency range
power = abs(fftSignal).^2/n;    % power of the DFT

plot(f,power)
xlabel('Frequency')
ylabel('Power')
%%x1
f1=10; f2=150; f3=325;
t1=4;  t2=8;   t3=12;
fsample=325*5;
fs=fsample;
t = 0:1/fs:t3;
x1=cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);


%% x2
fsample=325*5;
fs=fsample;
t = 0:1/fs:t3;
t21=0:1/fs:t1;
t22=t1:1/fs:t2;
t23=t2:1/fs:t3;
x21=cos(2*pi*f1*t21);
x22=cos(2*pi*f2*t22);
x23=cos(2*pi*f2*t23);
x2=[x21 x22 x23]; 





fftSignal = fft(x1);
fftSignal = fftshift(fftSignal);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f, abs(fftSignal));
