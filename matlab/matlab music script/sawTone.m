function Y=sawTone(time,pitch,Fs,A)
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
	% A = sqrt(3/2); % less than 1 so that it does not overpower sine-tones, or the user's ears
    % calculated to have a similar apparent average amplitude to a sine
    % wave. And actually, it's more than 1... huh.
    % so comment it out and replace it with something found experimentally:
    A = 0.8;
    if nargin < 3
        % Fs not specified;
        Fs=44100;
        disp('Setting Fs to default value, 44100 Hz.');
        if nargin < 2
            disp('Function sawTone() was not passed enough arguments! It needs at least time and pitch.');
            return
        end
    end
end

fA=440; % this should be an easy variable name to remember, right?
freq=fA*2^(pitch/12);

% now to calculate the period:
period = 1/freq;

t=0:(1/Fs):time;
Y = A*2*(t./period - floor(t./period + 0.5));

end
