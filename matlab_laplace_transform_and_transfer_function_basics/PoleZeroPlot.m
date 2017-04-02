% This script explores the pzplot() function in Matlab. We use different
% transfer functions to plot the zero-pole graphs via pzplot().

clc;
clear;

num1 = [30 -180];
den1 = [1 4 13 7];
G1s = tf(num1, den1)
zpk(G1s)

num2 = [1 0 1 1];
den2 = [1 1 0 6];
G2s = tf(num2, den2)
zpk(G2s)

z = [-4 -2+4*1j -2-4*1j];
p = [2 -4 -5*1j 5*1j];
k = 1;
G3s = zpk(z,p,k)
tf(G3s)

num4 = [1 11 35 250];
den4 = [1 4 39 108 0 0];
G4s = tf(num4, den4)
zpk(G4s)

num5 = [1 5 6];
den5 = [1 4 0 15 35];
G5s = tf(num5, den5)
zpk(G5s)

num6 = [1 0 -1];
den6 = [1 0 4 6 4];
G6s = tf(num6, den6)
zpk(G6s)

subplot(2, 3, 1)
pzplot(G1s)
title('Pole-Zero Map: G1s')
subplot(2, 3, 2)
pzplot(G2s)
title('Pole-Zero Map: G2s')
subplot(2, 3, 3)
pzplot(G3s)
title('Pole-Zero Map: G3s')
subplot(2, 3, 4)
pzplot(G4s)
title('Pole-Zero Map: G4s')
subplot(2, 3, 5)
pzplot(G5s)
title('Pole-Zero Map: G5s')
subplot(2, 3, 6)
pzplot(G6s)
title('Pole-Zero Map: G6s')