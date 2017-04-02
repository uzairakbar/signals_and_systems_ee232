% This programme studies generation of a  periodic version of a time 
% limited input signal by convolving the signal with an impulse train. The 
% impulses/samples should be located at least a period of the signal being 
% convolved apart.

clc;
clear;

% Load the Audio (.wav) File
filename = '\whale.wav';
[s, fs] = audioread(filename);

t = 0 : 1 : length(s) - 1;      % Time indices for input
t = t./fs;

% Generate an impulse train depending upon the No. of repetitions required
i = impulseTrain(length(s), 2);
result = conv(i, s);            % Convolve with audio waveform

% Plot of original signal
plot(t, s);
title('Audio Waveform');
xlabel('t(sec)');

% Plot of generated periodic signal
figure;
plot(result);
title('Periodic Audio Waveform');
sound(result, fs);
