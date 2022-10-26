n=linspace(0,49,50);
s=2*n.*(0.9).^n;
d=randn(1,50);
for M=1:100;
y1 = recursive_MAfilter(M,s,n);
y2 = MAfilter(M,s,n);
snrRMA(1,M)=snr(y1,d);
snrMA(1,M)=snr(y2,d);
end 
plot(snrRMA,'r')
xlabel('M');
ylabel('SNR,dB');
hold on 
plot(snrMA,'b');
xlabel('M');
ylabel('SNR,dB');