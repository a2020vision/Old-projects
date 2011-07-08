function Y=dy2(time,Fs)
% bell dynamics function for use with other tones
% Nick Leep, 2011

if nargin < 2
    Fs=44100;
    disp('Setting Fs to default value, 44100 Hz.')
end

% build time vector:
t=0:(1/Fs):time;

% for now, use a default time-constant of 2:

Y=.5*(-erf(2*(t-.5))+1);
return        