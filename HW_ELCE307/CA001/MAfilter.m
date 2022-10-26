function [y] = MAfilter(M,s,n)
d=randn(1,50);
x=s+d;
for n=1:50
    xsum=0;
for k=0:M-1
    if (n-k)<=0
        continue 
    end 
    xsum=xsum+(x(1,n-k));
end 
y(1,n)=1/M*(xsum);
end 
end

