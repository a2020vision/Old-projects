function [noteTones]=makenotes(storedString)
% function to make music based on a user's input. Right now it only does
% notes on the C major scale. This function only returns the note letters

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
disp('Welcome to Nick Leep''s Note Maker')
disp('(c) 2011')

% check how much was input
% we'll check for the Fs and stored string here, and the fileName later
switch nargin
    case 0 % nothing input
        storedString=getString;
    case 1 % have string, not Fs
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

% noteTones=zeros(1,length(octalRep+2));
noteTones(1)='c';%-9; % make the first note middle C
% noteTones(1, length(noteTones)) = -9; % make the last note middle C

for iter=2:(length(octalRep))
    temp=str2num(octalRep(iter));
    switch temp
        case 0
            noteTones(1,iter)='c';%-9; % middle C
        case 1
            noteTones(1,iter)='D';%-7; % D
        case 2 % E
            noteTones(1,iter)='E';%-5;
        case 3 % F
            noteTones(1,iter)='F';%-4;
        case 4 % G
            noteTones(1,iter) = 'G';%-2;
        case 5 % A
            noteTones(1,iter) = 'A';%0;
        case 6 % B
            noteTones(1,iter) = 'B';%2;
        case 7 % high C
            noteTones(1,iter) = 'C';%3;
    end
end
noteTones(1,length(noteTones)+1) = 'c';
% finally, I want to put all of these into a vector y. This is also done
% with a kind of clumsy bit of code I hope to improve:

end


function storedString=getString
while 1
    storedString=input('Please enter the string to play: ','s');
    if ~isempty(storedString)
        break;
    else
        disp('You must enter something, or else what will I play?');
    end
end

end

