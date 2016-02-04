% This script explores the transfer function, tf() in Matlab.

clc;
clear;

g = 9.8;
M = 0.5;
m = 0.5;
b = 0.1;
L = 0.3;
I = 0.006;
q = (M+m)*(I+m*(L^2))-((m*L)^2);

num = [m*L/q 0 0];
den = [1 b*(I+m*L^2)/q -(M+m)*m*g*L/q -m*g*L/q 0];
Hs = tf(num, den)