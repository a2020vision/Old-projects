function scale2
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

% I will explain how this works inside the tone() function.

% define our "global constant":
global Fs

% give it a value:
Fs=44100;

% believe it or not, we're done with the early set-up now, and ready to
% start building a matrix. to make this clear, let's define a
% note-duration: say, a half-note, at half a second:

half=0.5;

% now we can build the matrix. For clarity, I'm doing individual notes:
C=tone(half,-9);
D=tone(half,-7);
E=tone(half,-5);
F=tone(half,-4);
G=tone(half,-2);
A=tone(half,0);
B=tone(half,2);
C2=tone(half,3);

% Next, let's smash them all into one matrix:
y(:,1)=[C D E F G A B C2];
% y(:,2)=sign([C D E F G A B C2]);
% and now, the moment you've all been waiting for:
sound(y,Fs);

% That's all.

end

function Y=tone(time,pitch)
% function tone returns a vector 
% with sound that should last "time" seconds
% at a frequency of "f" - relative to A 440.

% this should work for any scalar real value of pitch, but I strongly
% recommend using scalar values, since nonscalars will probably sound weird

% first we'll need our sound frequency:
global Fs

% another important value is the frequency of A:
A=440; % this should be an easy variable name to remember, right?

% next, I'd like to get the exact frequency that we'll be using, and put it
% into a more usable form. This is done by taking the "pitch" value, and
% transforming it to a frequency value. We can do this absolutely, since
% our pitches are defined relative to A, and we have a set value for the
% frequency of A:
freq=A*2^(pitch/12);

% How exactly does this work? you may ask. Well, we know that the A an
% octave above our A has twice the frequency (2*A). We also know there are
% twelve chromatic "steps" to get there (actually half-steps). Each step 
% has a frequency of 2*(1/12)*(frequency of the pitch below). It's simple
% math to see that you can find the frequency of any note using this
% equation based on its displacement from a pitch whose frequency you
% already know, and this is the equation you end up with.

% we also want to worry time. Time is a funny thing, and in this case it's
% kind of relative to Fs. That is to say: we will want to return a vector
% of sound, with each increment along that vector representing sound
% amplitude at a given time; and how big those increments should be in
% terms of time, depends on the sound frequency. The length of these
% increments is, in fact, 1/Fs. Now, as it happens I plan to make a vector
% with the time values first, and I do this thusly:
t=0:(1/Fs):time;

% that wasn't too hard, was it?

% Generating the actual tone is deceptively simple. We do it with a sine
% wave at the given frequency:

Y=sin(2*pi*freq*t);

% to the unintiated, this may seem to return a scalar value. You would,
% however, be forgetting that t is a vector. Now, I know that for clarity
% I'd normally do this in a for-loop, and in fact the first time I put this
% together, that's what I did. It would look something like this:
% 
% for ii=1:length(t)
%     tone(ii)=sin(2*pi*freq*t(ii));
% end
%
% However, I quickly found that, at any decent Fs, this took FOREVER to
% run, because it was running through MILLIONS of ii's. The single-line
% version above takes advantage of Matlab's matrix math roots, and
% calculates everything so much quicker, so quick, you wouldn't even
% believe.

% and that's all I have to say about that.
end
