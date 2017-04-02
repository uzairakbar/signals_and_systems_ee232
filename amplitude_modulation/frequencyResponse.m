function [ X ] = frequencyResponse(x, Fs)
%frequencyResponse Frequency response of a signal
%   [X] = frequencyResponse(x, Fs) returns the single-sided amplitude
%   spectrum of the frequency response of signal x at sample frequency Fs.

% freq Response in hz  from 0 to Fs/2 hz
L = length(x);
% Next power of 2 from length of y
NFFT = 2^nextpow2(L);
Y = fft(x,NFFT)/L;
X = Fs/2*linspace(0,1,NFFT/2+1);
% Plot single-sided amplitude spectrum.
plot(X,2*abs(Y(1:NFFT/2+1))),grid on 
title('Single-Sided Frequency Response')
xlabel('Frequency (Hz)')
ylabel('amplitude')

end