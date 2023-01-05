% Create the signal
samp_rate = 1000; % Sampling rate
t=0: 1/samp_rate : 2; % Sampling rate
time=0:0.001:2;
pts = length(time);
%fprintf(time)
signal1 = 2.5*sin(2*pi*4*t) + 1.5*sin(2*pi*6.5*t);
signal2 = 9*cos(2*pi*4*t) + 5*sin(2*pi*7*t) + 2*sin(pi*3*t) + 2*cos(9*pi*5*t);
signal = 9*cos(2*pi*4*t) + 5*sin(2*pi*7*t);
% Prepare the Fourier Transform
Frr_time = (0: pts -1)/pts;
Frr_coef = zeros(size(signal));
for fi = 1:pts
% Create a complex sine wave
csw = exp(-i *2*pi*(fi-1)*Frr_time);
% Compute the dot product between the sine wave and the signal
Frr_coef(fi) = sum (signal.*csw)/pts; % These are called the Fourier Coefficients
end
% Extract the amplitudes
ampls = 2 * abs(Frr_coef);
% Compute the frequencies vector
hz = linspace(0, samp_rate/2, floor(pts/2)+1);
%-------------------
figure(1), clf
%subplot(311)
plot(t, signal, 'k', 'linew', 2)
xlabel('Time (s)'), ylabel('Amplitude')
title('Time Domain')
%-------------------
%subplot(312)
figure(2)
stem(hz, ampls(1:length(hz)), 'ks-', 'linew', 3, 'markersize', 5, 'markerfacecolor', 'w')
% Make plot look a nicer
set(gca, 'xlim', [0 10], 'ylim', [-0.1 12])
xlabel('Frequency (Hz)'), ylabel('Amplitude (a.u.)')
title('Amplitude Spectrum')

% Plot the angles
%-------------------
%subplot(313)
figure(3)
stem(hz, angle(Frr_coef (1:length(hz))), 'ks-', 'linew', 3, 'markersize', 5, 'markerfacecolor','w')
% Make plot look a nicer
set(gca, 'xlim', [0 10], 'ylim', [-1 1]*pi)
xlabel('Frequency (Hz)'), ylabel('Phase (rad)')
title('Phase Spectrum')
%plot reconstructed time series on top of the original time series
reconTS = real(ifft(Frr_coef)) * pts ;
%-------------------
%subplot (311), hold on
figure(1), hold on
plot(time(1:3:end), reconTS(1:3:end), 'r.')
legend ({'Original' ; 'Reconstructed'})
% Inspect the two time series, they should be identical!
zoom on