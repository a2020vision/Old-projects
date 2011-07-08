function [y Fs filename]=makesound(storedString,Fs,filename)
% function to make music based on a user's input. Right now it only does
% notes on the C major scale.

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

% welcome message:
disp('Welcome to Nick Leep''s Sound Maker')
disp('(c) 2011')

% check how much was input
% we'll check for the Fs and stored string here, and the fileName later
switch nargin
    case 0 % nothing input
        Fs = input('Please input the sound frequency in Hz [44100]: ');
        if isempty(Fs)
            Fs = 44100;
            disp('Using default value of 44100 Hz!')
        end
        storedString = getString;
    case 1 % have string, not Fs
        Fs = input('Please input the sound frequency in Hz [44100]: ');
        if isempty(Fs)
            Fs = 44100;
            disp('Using default value of 44100 Hz!')
        end
    case 2
        % have storedString, Fs
end
% we need to check to see if the string is numeric, and if so, make it a
% string:
if isnumeric(storedString)
    storedString=num2str(storedString);
end
dispString = strcat('using ''',storedString,''' as the string.');
disp(dispString)


% next, since there are 8 notes in the scale, convert that string to octal
% (a numeric display format that only has 8 digits, instead of 10):
octalRep=sprintf('%o',storedString);

% believe it or not, we're done with the early set-up now, and ready to
% start building a matrix. to make this clear, let's define a
% note-duration: say, a half-note, at half a second:

half=0.5;

% Ok, so now we need to do a different kind of thing: we need to convert
% each digit in ocatlRep to a note. This is done by converting each digit
% on octalRep to somewhere on the note-tone chart. For right now, I'm doing
% this with a clumsy bit of code, but in the future I hope to come up with
% a better algorithm:

noteTones=zeros(1,length(octalRep+2));
noteTones(1)=-9; % make the first note middle C
% noteTones(1, length(noteTones)) = -9; % make the last note middle C

for iter=2:(length(octalRep))
    temp=str2num(octalRep(iter));
    switch temp
        case 0
            noteTones(1,iter)=-9; % middle C
        case 1
            noteTones(1,iter)=-7; % D
        case 2 % E
            noteTones(1,iter)=-5;
        case 3 % F
            noteTones(1,iter)=-4;
        case 4 % G
            noteTones(1,iter) = -2;
        case 5 % A
            noteTones(1,iter) = 0;
        case 6 % B
            noteTones(1,iter) = 2;
        case 7 % high C
            noteTones(1,iter) = 3;
    end
end
noteTones(1,length(noteTones)+1) = -9;
% finally, I want to put all of these into a vector y. This is also done
% with a kind of clumsy bit of code I hope to improve:
y=tone(half,noteTones(1),Fs);
len=length(y);
for iter=2:length(noteTones)
    y((len*(iter-1)+1):(len*iter))=tone(half,noteTones(iter),Fs);
end

while 1
choice=input('Would you like to play the sound now? [y]/n: ','s');
    switch choice
        case {'Y' 'y' []}
            disp('playing')
            sound(y,Fs);
            break
        case {'N' 'n'}
            disp('Not playing.')
            break
        otherwise
            disp('Not a valid choice!')
    end
end
% iter=1;
while 1
    choice=input('Would you like to save this as an audio file? [y]/n: ','s');
    switch choice
        case {'y' 'Y' 'yes' 'Yes' []}
            % stuff
            disp('File will save as a MS Wave (.wav) file.')
            while ~(exist('filename','var'))
                filename=input('File to save it as: ','s');
                if isempty(filename)
                    disp('You didn''t enter anything!')
                    clear filename
                end
            end
            filename=[filename '.wav'];
            wavwrite(y,Fs,filename);
            saveLocation=[cd '/' filename];
            disp(['File saved in ' saveLocation])
            break
        case {'n' 'N'}
            break
        otherwise
            disp('Not a valid choice!')
    end
end


end

function Y=tone(time,pitch,Fs)
% function tone returns a vector
% with sound that should last "time" seconds
% at a frequency of "f" - relative to A 440.

% this should work for any scalar real value of pitch, but I strongly
% recommend using scalar values, since nonscalars will probably sound weird

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

function storedString=getString
while 1
    storedString=input('Please enter the string to play: ','s');
    if length(storedString) > 0
        break;
    else
        disp('You must enter something, or else what will I play?');
    end
end

end

