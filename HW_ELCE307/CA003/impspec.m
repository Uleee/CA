function [] = impspec(b1,a1,b2,a2)
[h1,t1]=impz(b1,a1);
[h2,t2]=impz(b2,a2);

figure
subplot(2,1,1)
stem(h1);
title('Impulse Response of (1) System');
xlabel('time'); 
ylabel('Amplitude');

subplot(2,1,2)
stem(h2);
title('Impulse Response of (2) System');
xlabel('time'); 
ylabel('Amplitude');


[f1,w1] = freqz(b1,a1,100); % in order cover all unit circle 2001 was used
[f2,w2] = freqz(b2,a2,100); % in order cover all unit circle 2001 was used
magnitude1 = 20*log10(abs(f1));
magnitude2 = 20*log10(abs(f2));

phase1 = angle(f1)*180/pi;
phase2 = angle(f2)*180/pi;

figure
subplot(2,2,1); 
plot(w1/pi,magnitude1);
title('Magnitude Response of System (1)');
xlabel('frequency in pi units');    
ylabel('Magnitude, dB');
subplot(2,2,2); 
plot(w2/pi,magnitude2);
title('Magnitude Response of System (2)');
xlabel('frequency in pi units');    
ylabel('Magnitude, dB');
subplot(2,2,3)
plot(w1/pi,phase1);
title('Phase Response of System (1)');
xlabel('frequency in pi units');    
ylabel('Degrees');
subplot(2,2,4)
plot(w2/pi,phase2);
title('Phase Response of System (2)');
xlabel('frequency in pi units');    
ylabel('Degrees');
end

