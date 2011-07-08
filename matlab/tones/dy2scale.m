function dy2scale
% function to play a scale using a revised/cleaned-up method.

% The main function, scale2, defines the necessary variables and builds a
% vector with individual notes, which it then plays with Matlab's sound()
% function. The individual notes are returned as vectors from the function
% tone(), defined below.

% tone() accepts two variables - time and pitch. time is the duration or
% length that the tone we want to return should last, in seconds. pitch is 
% the pitch that we want the tone to be in, as a number relative to A 440. 
% For example, the Ab below would be -1, the Bb above would be +1, the C 
% above would be +3, etc. A full table of the chromatic scale between 
% middle C and the C above:

% C (high):   +3
% B:          +2
% Bb:         +1
% A (440):    0
% Ab:         -1
% G:          -2
% F#:         -3
% F:          -4
% E:          -5
% Eb:         -6
% D:          -7
% C#:         -8
% C (middle): -9



Fs=44100;

% believe it or not, we're done with the early set-up now, and ready to
% start building a matrix. to make this clear, let's define a
% note-duration: say, a half-note, at half a second:

half=1;

% now we can build the matrix. For clarity, I'm doing individual notes:
C=tone(half,-9,Fs).*dy2(half,Fs);
D=tone(half,-7,Fs).*dy2(half,Fs);
E=tone(half,-5,Fs).*dy2(half,Fs);
F=tone(half,-4,Fs).*dy2(half,Fs);
G=tone(half,-2,Fs).*dy2(half,Fs);
A=tone(half,0,Fs).*dy2(half,Fs);
B=tone(half,2,Fs).*dy2(half,Fs);
C2=tone(half,3,Fs).*dy2(half,Fs);

% Next, let's smash them all into one matrix:
y(:,1)=[C D E F G A B C2];
% and now, the moment you've all been waiting for:
sound(y,Fs);

% That's all.

wavwrite(y,Fs,'dy2scale.wav')

end
