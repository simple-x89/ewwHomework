clear;
clc;
N = 250;		% Sets the sequence length to 250
Ts = 0.0002;		% The sampling rate
t = [0:N-1]*Ts;	% The sampling range
x = cos(2*pi*100*t) + cos(2*pi*500*t);
figure
plot(t,x)
k = 0;
for f = 0:1:800
	k = k+1;
	X(k) = trapz(t, x.*exp(-j*2*pi*f*t));
end
figure
f = 0:1:800;
plot(f, abs(X))


y = sin(2*pi*100*t) + sin(2*pi*500*t);
figure
plot(t,y)
k1 = 0;
for f1 = 0:1:800
	k1 = k1+1;
	Y(k1) = trapz(t, x.*exp(-j*2*pi*f1*t));
end
figure
f1 = 0:1:800;
plot(f1, abs(Y))
