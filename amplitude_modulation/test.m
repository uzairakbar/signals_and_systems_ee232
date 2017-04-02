% Tests the functionality of frequencyResponse, ampMod and ampDemod

Fs=4000;                % sampling frequency
t=0:1/Fs:2;
sig= cos(2*pi*10*t);    % massege signal
c = cos(2*pi*1000*t);   % carrier signal
mod_sig = ampMod(sig, c, Fs);
deMod_sig = ampDemod(mod_sig, c, Fs);