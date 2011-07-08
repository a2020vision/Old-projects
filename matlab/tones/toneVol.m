function Y=toneVol(time,pitch,Fs,A)
% function tone returns a vector 
% with sound that should last "time" seconds
% at a frequency of "f" - relative to A 440.

% Input variables:
% time: duration of sample, in seconds
% pitch: frequency of desired note
% Fs: sound frequency
% A: Amplitude

% Returns:
% Y, a vector with the tone desired.

% Now let's deal with situations in which not all values are provided:
if nargin < 4
    % amplitude is unspecified:
	A = 1;
    if nargin < 3
        % Fs not specified;
        Fs=44100;
        disp('Setting Fs to default value, 44100 Hz.')
        if nargin < 2
            disp('Function tone() was not passed enough arguments! It needs at least time and pitch.');
            return
        end
    end
end

fA=440; % this should be an easy variable name to remember, right?
freq=fA*2^(pitch/12);

t=0:(1/Fs):time;

Y=A*exp(-2*t).*sin(2*pi*freq*t);

end
