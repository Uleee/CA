function [y] = recursive_MAfilter(M,s,n)

d=randn(1,50);
x=s+d;

for n=1:50
    if (n-1)<=0 %basis cases 
        tempy=0;
    else 
        tempy=y(1,n-1);
    end
    if (n-M)<=0
        tempx=0;
    else 
        tempx=x(1,n-M);
    end 
y(1,n)=tempy+(1/M*(x(1,n)-tempx));
end 

end

