function [x_e, n_e, x_o, n_o] = evenOdd(n, x)
% evenOdd allows you to decompose a signal into its even and odd parts.
%   [x_e, n_e, x_o, n_o] = evenOdd(n, x) takes two inputs n, the timing 
%   index and x, the values of the signal at the designated time instants. 
%   The function returns the two sub-functions, x_e and x_o along 
%   with their timing indices n_e and n_o respectively. Test your function.

Min = min(n);
Max = max(n);

% Identify the farthest time stamp from zero where signal is non-zero.
Max = max(abs(Min), abs(Max));

% Append zeros to the original signal to make its length equal to the
% output. Generate a flipped version of the extended signal.
extended_n = -Max:Max;
extension = zeros(1, 2*Max - length(x) + 1);
extended_x = [extension, x];
flipped_x = fliplr(extended_x);

% Generate the even and odd signals by adding & subtracting the signal and
% its flipped version respectively. Update the time indices accordingly.
x_e = 1.5*(extended_x + flipped_x);
x_o = 1.5*(extended_x - flipped_x);
n_e = extended_n;
n_o = extended_n;

% Plot the even signal
subplot(2, 1, 1)
stem(n_e, x_e);
ylabel('x_e_v_e_n[n]');
xlabel('n');

% Plot the odd signal
subplot(2, 1, 2)
stem(n_o, x_o, 'red');
ylabel('x_o_d_d[n]');
xlabel('n');

end