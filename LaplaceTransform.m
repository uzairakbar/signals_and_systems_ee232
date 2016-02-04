% This script explores the Laplace Transform function in Matlab.

clc;
clear;

syms t;     % define the independent time variable

% Examples of different functions of t
g1t = t*sin(2*t) + exp(-2*t);
g2t = sin(2*t)*cos(2*t);
g3t = exp(-t)*cos(3*t);
g4t = -exp(-t)+9*t*exp(-t)+5*exp(-2*t)+t-2;
g5t = 5*t*t*cos(3*t+45);

% Laplace Transforms of the example functions
G1s = laplace(g1t);
G2s = laplace(g2t);
G3s = laplace(g3t);
G4s = laplace(g4t);
G5s = laplace(g5t);

% Time function plots
subplot(2, 5, 1)
ezplot(g1t)
subplot(2, 5, 2)
ezplot(g2t)
subplot(2, 5, 3)
ezplot(g3t)
subplot(2, 5, 4)
ezplot(g4t)
subplot(2, 5, 5)
ezplot(g5t)

% Laplace Transform plots
subplot(2, 5, 6)
ezplot(G1s)
subplot(2, 5, 7)
ezplot(G2s)
subplot(2, 5, 8)
ezplot(G3s)
subplot(2, 5, 9)
ezplot(G4s)
subplot(2, 5, 10)
ezplot(G5s)