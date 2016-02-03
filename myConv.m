function [y, n] = myConv(x, nx, h, nh)
% myConv is a custom convolution function which computes the convolution 
% between the two signals as well as catering for their time indices.
%   [y, n] = myConv(x, nx, h, nh) returns the convolution y of inputs x 
%   and h. nx and nh being the time indices of x and h respectively, are 
%   used to calculate the output signal time index vector, n.

H = h;
X = x;

lx = length(X);                 % length of x
lh = length(h);                 % length of h

if lx>lh                        % append zeros to make x & h equal
    H = [H zeros(1, lx-lh)];
else
    X = [X zeros(1, lh-lx)];
end

y = zeros(1, lx+lh-1);          % make an empty y vector
X = fliplr(X);                  % flip x for convolving

for i = 1:length(y)             % multiply overlaping terms of x and h, then sum
    if i <= length(X)
        y(i) = sum(X(length(X) - i + 1 : length(X)) .* H(1:i));
    else
        j = i - length(X);
        y(i) = sum(X(1 : length(X) - j) .* H(j + 1 : length(H)));
    end
end

% adjusting the time vectors
n = (min(nx) + min(nh)):(max(nx) + max(nh));

subplot(1, 2, 1)                % plot my_conv
stem(n, y);
xlabel('n');
ylabel('y[n]=x[n]*h[n]');
title('my_conv');

subplot(1, 2, 2)                % plot conv
stem(n, conv(x, h));
xlabel('n');
ylabel('y[n]=x[n]*h[n]');
title('conv');