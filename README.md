# signals_and_systems_fundamentals
Programmes for studying signals and systems fundamantals; Signal transformations, enen &amp; odd signal components, convolution and periodisation of finite duration signals.

The following functions and scripts are contained in this file:
  * evenOdd.m
  * diffEqn.m
  * myConv.m
  * impulseTrain.m
  * BackToBackAudio.m
 
### evenOdd.m
`[x_e, n_e, x_o, n_o] = evenOdd(n, x)` takes two inputs `n`, the timing
index and `x`, the values of the signal at the designated time instants.
The function returns the two sub-functions, `x_e` and `x_o` along with their
timing indices `n_e` and `n_o` respectively. Test your function.

### diffEqn.m
`Y = diffEqn(CONSTANT, X, Yo)` returns the time series `Y` according to the
difference equation y[n] = a.y[n-1] + x[n]. `X` is the input time series,
`Yo` is y[-1], which is user defined and `CONSTANT` is the coeffcient a of
y[n-1].

### myConv.m
`[y, n] = myConv(x, nx, h, nh)` returns the convolution `y` of inputs `x` and
`h`. `nx` and `nh` being the time indices of `x` and `h` respectively, are used to
calculate the output signal time index vector, `n`.

### impulseTrain.m
`[ x, n ] = impulseTrain( N, k )` returns an impulse train `x` along with
its timing index vector `n` depending on the required period `N` and signal
range `k`.

### BackToBackAudio.m 
This script studies the generation of a  periodic version of a time
limited input signal by convolving the signal with an impulse train. The
impulses/samples should be located at least a period of the signal being
convolved apart.
