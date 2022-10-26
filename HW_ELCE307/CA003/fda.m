% w=linspace(-pi,pi,50); 
% magres=1/M*abs(((sin((w*M)/2))./(sin((w/2)))));
% phaseres=-((M-1)/2)+angle((((sin((w*M)/2))./(sin((w/2))))));
% plot(w,phaseres)
%  plot(w,magres);
function [] = fda(M,N)
%Exercise 1. ELCE307 CA003. Made by V.Ostrovsky
%N=20; % DFT Points
%M = 5; 
b = (1/M)*ones(1,M);
a = 1; % MAF Filter buiding
[h,w]=freqz(b,a,N,'whole');
subplot(2,1,1)
plot(w/pi,abs(h));
title('Magnitude Response');
xlabel('frequency in pi units');    
ylabel('Magnitude, dB');
subplot(2,1,2)
plot(w/pi,unwrap(angle(h))*180/pi)
title('Unwrapped Phase Response');
xlabel('frequency in pi units');    
ylabel('Degrees');
%w=linspace(-pi,pi,50);
%magres=1/M*abs(((sin((w*M)/2))./(sin((w/2)))));
%plot(w,magres);
end

