%Keith Harris
%EE314L
%Lab4
%9.30.2022

clc
clear
close all
A=2;
a=4;
fs=2000; % Sampling frequency
t=0:1/fs:1; %Time 
x=cos(2*pi*100*t) + cos(2*pi*500*t);%Signal
plot(t,x) %Plotting the time domain signal
xlabel('t');
ylabel('x(t)');
title('Time domain Signal')
N=length(x);
N1=2^nextpow2(N);
X=fft(x,N1);
X=X(1:N1/2);%Discard Half of Points
X_mag=abs(X); %Magnitude Spectrum
%X_phase=phase(X); %Phase Spectrum
f=fs*(0:N1/2-1)/N1; %Frequency axis
figure
plot(f,(X_mag/N1)); %Plotting the Magnitude Spectrum after Normalization
xlabel('Frequency (Hz)');
ylabel('Magnitude Spectrum');
title('Magnitude Spectrum')

%Note: most of this code was copy/pasted from online!