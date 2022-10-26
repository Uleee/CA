function [] = plots2(y,new,flag)

figure 
subplot(2,1,1)
plot(y);
title('Original signal');
xlabel('time'); 
ylabel('Amplitude');
subplot(2,1,2)
plot(new)
if flag==1
title('Processed Signal through system 1');
else 
title('Processed Signal through system 2');
end 
xlabel('time'); 
ylabel('Amplitude');
N = length(y);
nsc = floor(N/5);
noverlap = floor(nsc/2);
%x = spectrogram(y,hamming(nsc),noverlap);
N2=length(new);
nsc2 = floor(N2/5);
noverlap2 = floor(nsc2/2);
% x2 = spectrogram(new,hamming(nsc2),noverlap2);
figure 
subplot(2,1,1)
spectrogram(y,hamming(nsc),noverlap)
title('Spectrogram of Original Sound');
subplot(2,1,2)
spectrogram(new,hamming(nsc2),noverlap2);
if flag==1
title('Spectrogram of Processed Signal through system 1');
else 
title('Spectrogram of Processed Signal through system 2');
end 
end

