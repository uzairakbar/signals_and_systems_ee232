function [ fil_out_sig ] = ampDemod(mod_sig, c, Fs)
%ampDemod Demodulation of AM signal
%   [fil_out_sig] = ampDemod(mod_sig, c, Fs) returns the demodulated
%   signal of an AM signal, mod_sig with carrier signal c at a sampling
%   frequency of Fs.

out_sig = mod_sig.*c;        %output signal

%low-pass filter with 20Hx cutoff frequency
[b, a] = butter(1, 20/(Fs/2), 'low');

%filtered output signal
fil_out_sig = filter(b, a, out_sig);

subplot(3, 2, 1)
% Plot amplitude spectrum of modulated input signal
plot(mod_sig),grid on 
title('Modulated Input Signal')
xlabel('Time (sec)')
ylabel('amplitude')
subplot(3, 2, 2)
% Plot frequency response of mudulated input signal
frequencyResponse(mod_sig, Fs)

subplot(3, 2, 3)
% Plot amplitude spectrum of demodulated output signal
plot(out_sig), grid on
title('Demodulated Output Signal')
xlabel('Time (sec)')
ylabel('amplitude')
subplot(3, 2, 4)
% Plot frequency response of demodulated output signal
frequencyResponse(out_sig, Fs)

subplot(3, 2, 5)
% Plot amplitude spectrum of filtered, demodulated output signal
plot(fil_out_sig),grid on 
title('Filtered, Demodulated Output Signal')
xlabel('Time (sec)')
ylabel('amplitude')
% Plot frequency response of filtered, demodulated output signal
subplot(3, 2, 6)
frequencyResponse(fil_out_sig, Fs)

end