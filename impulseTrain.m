function [ x, n ] = impulseTrain( N, k )
% impulseTrain generates an impulse train for a given period and given 
% range.
%   [ x, n ] = impulseTrain( N, k ) returns an impulse train x along with 
%   its timing index vector n depending on the required period N and signal
%   range k.

index = k * N;              % N is the period and k denotes the length of signal
n = - index : index;        % Generate the time indices for output

x = zeros(1, 2*index + 1);  % Generate a zero vector
x(rem(abs(n), N) == 0) = 1; % Plot impulses depending on the period N

stem(n, x);
ylabel('delta[n]');
xlabel('n');
title('Impulse Train');

end