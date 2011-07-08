function Y=weirdtone(time,pitch,Fs,A)

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
Y=sign(A*sin(2*pi*freq*t))-A*sin(2*pi*freq*t);

