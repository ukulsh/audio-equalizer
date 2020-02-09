function Hd = fir_low_pass(fc,fs)

Fs = fs;  % Sampling Frequency

N    = 50;       % Order
Fc   = fc;      % Cutoff Frequency
flag = 'scale';  % Sampling Flag

win = blackman(N+1);

b  = fir1(N, Fc/(Fs/2), 'low', win, flag);

Hd = dfilt.dffir(b);

