function [] = systanalys(b,a)

%% Impulse response
imp = [1; zeros(99,1)];
h1=filter(b,a,imp);
h2=impz(b,a,100);
figure
subplot(2,1,1);	
stem(h1);
title('Impulse Response with filter()');
xlabel('time');	
ylabel('Amplitude');
subplot(2,1,2);	
stem(h2);
title('Impulse Response with impz()');
xlabel('time');	
ylabel('Amplitude');
tf=isequal(h1,h2);
%% Frequency Response
[h,w] = freqz(b,a,'whole',2001); % in order cover all unit circle 2001 was used
magnitudeh = 20*log10(abs(h));
phaseh = angle(h)*180/pi;
figure
subplot(2,1,1);	
plot(w/pi,magnitudeh);
title('Magnitude Response');
xlabel('frequency in pi units');	
ylabel('Magnitude, dB');
subplot(2,1,2);	
plot(w/pi,phaseh);
title('Phase Response');
xlabel('frequency in pi units');	
ylabel('Degrees');
%% Pole zero pattern
roots(a);
roots(b);
figure
zplane(b,a);
if tf==1 
disp('Impulse response with impz() and filer() are equal');
else 
    disp('Impulse response with impz() and filer() are NOT equal');
end 
end
