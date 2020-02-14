function Hd = fir_band_pass(fc1,fc2,fs)

Fs = fs;  % Sampling Frequency

N    = 50;       % Order
Fc1  = fc1;     % First Cutoff Frequency
Fc2  = fc2;    % Second Cutoff Frequency
flag = 'scale';  % Sampling Flag

win = blackman(N+1);


b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
Hd = dfilt.dffir(b);


