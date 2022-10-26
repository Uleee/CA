function [corr] = xcor(x,y)
N=8;
M=7;
n=linspace(0,N,N+1);
m=linspace(0,M,M+1); 
%x=[2 -1 3 7 1 2 -3];
%y=[1 -1 2 -2 4 1 -2 5];
l=0;
flag=true;
%% Apply parameter checks in order to use only one nested loop
while flag
if M<N && l<=0
    param0=0; % lag parameter
    param1=N-M;
    param2=M-1+l;
else
if M<N && l>=0 && l<N-1
    param0=N-M; % lag parameter
    param1=N-1;
    param2=N-1;
else
if M>=N
    param0=0; % lag parameter
    param1=M;
    param2=N-1;
    flag=false;
else 
    flag=false;
end 
end 
end
%% Loop computing xycorr 
    for l=param0:param1
        sum=0;
        for n=l:param2
        sum=sum+x(1,(n)+1)*y(1,(n-l)+1);
        end 
         corr(1,(l)+1)=sum;
    end 
end 
exp=xcorr(x,y);
%plot(corr,'r');
%hold on
%plot(exp,'b');
end

