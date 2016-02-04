% This script explores the Inverse Laplace Transform function in Matlab.

clc;
clear;

syms s;     % define the independent complex frequency variable

% Examples of different functions of s
G1s = 1/(s*(s+2)*(s+3));
G2s = 10/((s+1)*(s+1)*(s+3));
G3s = (2*(s+1))/(s*(s*s+s+2));
G4s = (s+1)/(s*(s+2)*(s*s+2*s+2));

% Inverse Laplace Transforms of the example functions
g1t = ilaplace(G1s);
g2t = ilaplace(G2s);
g3t = ilaplace(G3s);
g4t = ilaplace(G4s);

% Laplace Transform plots
subplot(2, 4, 5)
ezplot(G1s)
subplot(2, 4, 6)
ezplot(G2s)
subplot(2, 4, 7)
ezplot(G3s)
subplot(2, 4, 8)
ezplot(G4s)

% Time function plots
subplot(2, 4, 1)
ezplot(g1t)
subplot(2, 4, 2)
ezplot(g2t)
subplot(2, 4, 3)
ezplot(g3t)
subplot(2, 4, 4)
ezplot(g4t)