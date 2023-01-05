function xMean=average(x)
%x=[1.5 1.2 0.8 0.9 1.1];
N=length(x);
xSum=0;
 for i=1:N
xSum=xSum+x(i);
 end
xMean=xSum/N;
end
