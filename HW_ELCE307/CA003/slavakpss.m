function [] = slavakpss(fs1,fs2,fs3)
%The fs1,fs2,fs3 is corresponding sampling frequencies 
f1=10; f2=150; f3=325;
t1=2;  t2=3;   t3=5;
%% x1 signal configurations
y1=0:1/fs1:t3;
x1=cos(2*pi*f1*y1)+cos(2*pi*f2*y1)+cos(2*pi*f3*y1);

%% x2 signal configurations
t21=0:1/fs2:t1; t22=t1:1/fs2:t2; t23=t2:1/fs2:t3;
x21=cos(2*pi*f2*t21); x22=cos(2*pi*f2*t22); x23=cos(2*pi*f2*t23);
x2=[x21 x22 x23];

%% x3 signal configurations
y3=0:1/fs3:t3;
x3=cos(2*pi*f1*y3.^2);

figure
plot(x1);
title(['First signal, Fs= ',num2str(fs1), ' Hz ']);
xlabel('time'); 
ylabel('Amplitude');
figure
plot(x2);
title(['Second signal, Fs= ',num2str(fs2), ' Hz']);
xlabel('time'); 
ylabel('Amplitude');
figure
plot(x3);
title(['Third signal, Fs= ',num2str(fs3), ' Hz']);
xlabel('time'); 
ylabel('Amplitude');

%% b) Spectral Analysis

fftSignal1 = fft(x1);
n1 = length(x1);         
f1 = (0:n1-1)*(fs1/n1);    
power1 = abs(fftSignal1).^2/n1;   

fftSignal2 = fft(x2);
n2 = length(x2);         
f2 = (0:n2-1)*(fs2/n2);    
power2 = abs(fftSignal2).^2/n2;   

fftSignal3 = fft(x3);
n3 = length(x3);         
f3 = (0:n3-1)*(fs3/n3);    
power3 = abs(fftSignal3).^2/n3;   

figure 
plot(f1,power1)
title(['First signal, Fs= ',num2str(fs1), ' Hz ']);
xlabel('Frequency')
ylabel('Power')
figure
plot(f2,power2)
title(['Second signal, Fs= ',num2str(fs2), ' Hz']);
xlabel('Frequency')
ylabel('Power')
figure
plot(f3,power3)
title(['Third signal, Fs= ',num2str(fs3), ' Hz']);
xlabel('Frequency')
ylabel('Power')

end

% fftSignal = fft(x1);
% fftSignal = fftshift(fftSignal);
% f = fs/2*linspace(-1,1,fs);
% figure;
% plot(f, abs(fftSignal));

