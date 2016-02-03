function Y = diffEqn(CONSTANT, X, Yo)
% diffEqn models the first order system defined by the difference equation
% y[n] = a.y[n-1] + x[n].
%   Y = diffEqn(CONSTANT, X, Yo) returns the time series Y according to the
%   difference equation y[n] = a.y[n-1] + x[n]. X is the input time series,
%   Yo is y[-1], which is user defined and CONSTANT is the coeffcient a of
%   y[n-1].

Y = zeros(1, length(X));
Y(1, 1) = CONSTANT.*Yo + X(1, 1);	% Calculate Y[0]

for n = 2 : 1 : length(X)           % Calculate Y[n], n>0
    
    Y(1, n) = CONSTANT.*Y(1, n - 1) + X(1, n);
    
end

stem(X);
hold on
stem(Y, 'red');
hold off
legend('X[n]', 'Y[n]');
xlabel('n');
ylabel('Y[n] = CONSTANT.Y[n-1] + X[n]');

end