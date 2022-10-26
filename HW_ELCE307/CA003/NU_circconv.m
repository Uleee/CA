function [y] = NU_circconv(x1,x2)
[~,N1]=size(x1);
[~,N2]=size(x2);
p=max([N1,N2]);
if N2>N1
    temp=[x1,zeros(1,N2-N1)];
    x1=temp;
end
if N1>N2
     temp=[x2,zeros(1,N1-N2)];
    x2=temp;
end  
  % Algorithm description: Form a Toeplitz matrix and compute the
  % max(N1,N2) point circular convolution
  A(1,:)=x1;
  for i=2:p
      for k=2:p
    dum(1,1)=x1(1,p);
    dum(1,k)=x1(1,k-1);
end 
x1=dum; 
clear dum
      for j=1:p   
          A(i,j)=x1(1,j);
          end
  end
  toeplitz=A';
  y=toeplitz*x2';
  %% Comparison with DTFT method 
  D=dftmtx(p);
  conv=(D*x1').*(D*x2');
  y2=1/p*(D*conv); % inverse dtft
  if isequal(y,y2)
      print('DTFT method matches with 2.1');
  end 
  
  
  
