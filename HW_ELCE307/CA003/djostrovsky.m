%Loading of handel, select lines 2-6 and press Ctrl+T, copy and Ctrl+R back
% load handel.mat
% labrat='handel.wav';
% audiowrite(labrat,y,8192);
% clear y
% [y,Fs]=audioread('handel.wav');

function [handel1,handel2] = djostrovsky(y,tau)
%Exercise 4. ELCE307 CA003. Made by V.Ostrovsky
fs=8192;
D=ceil(tau*fs);
b1=[1 zeros(1,D-1) 0.7];
a1=1;
b2=1;
a2=[1 zeros(1,D-1) -0.7];

impspec(b1,a1,b2,a2);
%% 4.2
flag=1;
handel1=filter(b1,a1,y);
plots2(y,handel1,flag);

flag=0;
handel2=filter(b2,a2,y);
plots2(y,handel2,flag);

end

