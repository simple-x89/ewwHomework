%signal = 2.5*sin(2*pi*4*t) + 1.5*sin(2*pi*6.5*t);
% The DTFT in a loop – form Create the signal
%------------Create the signal--------------------
samp_rate = 1000; 
t = 0: 1/samp_rate : 2 
time=0:0.001:2
pts = length(time);
signal = 2.5*sin(2*pi*4*t) + 1.5*sin(2*pi*6.5*t); 
%---------Prepare the Fourier Transform------------
Frr_time = (0: pts -1)/pts;
Frr_coef = zeros(size(signal));
for fi = 1:pts
    csw = exp(-i *2*pi*(fi-1)*Frr_time);
    Frr_coef(fi) = sum (signal.*csw)/pts
end
%------------Extract the amplitudes----------------
ampls = 2 * abs(Frr_coef);
%Compute the frequencies vector
hz = linspace(0, samp_rate/2, floor(pts/2)+1);
figure(1), clf
%subplot(2,1,1)
plot(t, signal, 'b', 'linew', 2)
xlabel('Time (s)'), ylabel("Amplitude")
title("Time Domain")
%subplot(2,1,2)
figure(2)
stem(hz, ampls(1:length(hz)), 'bs-', 'linew', 3, 'markersize', 15,'markerfacecolor', 'w')
set(gca, 'xlim', [0 10], 'ylim', [-0.1 3])
xlabel('Frequency (Hz)'), ylabel('Amplitude')
title('Frequency Domain')
% Plot MATLAB’s FFT output on top
Frr_coef_F = fft(signal)/pts
% Extract the amplitudes
ampls_F = 2 * abs(Frr_coef_F);
hold on
stem(hz, ampls_F(1:length(hz)), "ro", 'markerfacecolor', 'r')
%---------------------------
%------------Create the signal--------------------
% samp_rate = 1000; 
% t = 0: 1/samp_rate : 2 
% time=0:0.001:2
% pts = length(time);
% signal = signal = 2.5*sin(2*pi*4*t) + 1.5*sin(2*pi*6.5*t);
% %---------Prepare the Fourier Transform------------
% Frr_time = (0: pts -1)/pts;
% Frr_coef = zeros(size(signal));
% for fi = 1:pts
%     csw = exp(-i *2*pi*(fi-1)*Frr_time);
%     Frr_coef(fi) = sum (signal.*csw)/pts
% end
% %------------Extract the amplitudes----------------
% ampls = 2 * abs(Frr_coef);
% %Compute the frequencies vector
% hz = linspace(0, samp_rate/2, floor(pts/2)+1);