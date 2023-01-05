%Keith Harris
%EE314L
%Lab3
%12.7.2022


%activity1 Moving-Average Filter

t1 = linspace(pi,-pi,1000);
rng default %initialize random number generator
x1 = sin(t1) + 0.25*rand(size(t1));

windowSize = 15;
b = (1/windowSize)*ones(1,windowSize);
a = 1;

y1 = filter(b,a,x1);
plot(t1,x1)
hold on
plot(t1,y1)
title('Moving Average Filter (windowSize = 15')
legend('Input Data','Filtered Data')

%activity2 Low-Pass Filter


fs = 1e3;
t2 = 0:1/fs:1;
x2 = [1 2 3]*sin(2*pi*[50 250 300]'.*t2) + randn(size(t2))/10;
figure;
lowpass(x2,150,fs)
figure;
highpass(x2,150,fs)
figure;
bandpass(x2,[100 200],fs)
figure;
bandstop(x2,[100 200],fs)