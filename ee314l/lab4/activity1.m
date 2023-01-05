%Keith Harris
%EE314L
%Lab4
%9.30.2022


% MATLAB code to find Fourier Transform of Square wave signal x(t)=1 for % -2 < t < 2
f = -5: .01:5; 	% sets the range of the frequency
X=4*sinc(4*f);	% defines the Fourier transform of square pulse


%subplot(4,1,1)
figure
plot(f ,X, 'r')	% plots the Fourier spectrum
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("Fourier spectrum");

%subplot(4,1,2)
figure
plot(f ,abs(X), 'b')	% plots the magnitude spectrum
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("Magnitude spectrum");

%subplot(4,1,3)
figure
plot(f ,angle(X), 'g')	% plots the phase spectrum
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("Phase spectrum");

clear;
clc;
t = -2:0.01:2; 	
k = 0;

for f2 = -5:0.01:5
	k = k+1;
	Z(k) = trapz(t, exp(-1i*2*pi*f2*t));
end
f2 = -5:0.01:5
%subplot(4,1,4)
figure
plot(f2 ,abs(Z), 'c')


clear;
clc;
N = 250;		% Sets the sequence length to 250
Ts = 0.0002;		% The sampling rate
t2 = [0:N-1]*Ts;	% The sampling range
a = cos(2*pi*100*t2) + cos(2*pi*500*t2);

plot(t2,a,'m')
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("Phase Spectrum");

k1 = 0;
for f3 = 0:1:800
	k1 = k1+1;
	A(k1) = trapz(t2, a.*exp(-1i*2*pi*f3*t2));
end
figure
f3 = 0:1:800;
plot(f3, abs(A), 'y')
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("DF spectrum");
