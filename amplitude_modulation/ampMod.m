function [ mod_sig ] = ampMod(sig, c, Fs)
%ampMod Amplitude modulation of an input signal
%   [mod_sig] = ampMod(sig, c, Fs) returns the amplitude modulated
%   signal of a data signal, sig and carrier signal c at a sampling
%   frequency of Fs.

mod_sig = sig.*c;        %modulated signal

subplot(3, 2, 1)
% Plot amplitude spectrum of message signal
plot(sig),grid on 
title('Message Signal')
xlabel('Time (sec)')
ylabel('amplitude')
subplot(3, 2, 2)
% Plot frequency response of message signal
frequencyResponse(sig, Fs)

subplot(3, 2, 3)
% Plot amplitude spectrum of carrier signal
plot(c),grid on 
title('Carrier Signal')
xlabel('Time (sec)')
ylabel('amplitude')
subplot(3, 2, 4)
% Plot frequency response of carrier signal
frequencyResponse(c, Fs)

subplot(3, 2, 5)
% Plot amplitude spectrum of modulated signal
plot(mod_sig),grid on 
title('Modulated Signal')
xlabel('Time (sec)')
ylabel('amplitude')
% Plot frequency response of modulated signal
subplot(3, 2, 6)
frequencyResponse(mod_sig, Fs)

end