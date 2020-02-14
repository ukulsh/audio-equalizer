
[data,Fs] = audioread('inputwithhissgreaterthanpiby2.wav');
gain = [0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2];
audio_output = apply_fir_filters(data,Fs,gain);


% As for the conclusion this is the final output of the equalized signal
% generated through the parallel set of FIR filters the code easily
% demonstrates that the audio signal is first broken down into small
% frequencies and then we are utilizing the gain so as to equalize the
% audio based on our preference, we will be using the above defined gain
% array to carry out equaliztion


%different plots to demonstrate the effect of equalizing
subplot(211);
plot(data);
hold on;
subplot(212)
plot(audio_output);