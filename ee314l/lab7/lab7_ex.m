%Keith Harris
%EE314L
%Lab3
%12.7.2022



fs = 1e3;
t = 0:1/fs:1;
x = [1 2 3]*sin(2*pi*[250 350 550]'.*t) + randn(size(t))/10;


lowpass(x,300,fs)
figure;
highpass(x,300,fs)
figure;
bandpass(x,[300 400],fs)
figure;
bandstop(x,[300 400],fs)