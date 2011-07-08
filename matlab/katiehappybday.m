function katiehappybday
global sf f
sf=44100;
fA = 440.00; % Master Tuned to A 440
fGS = fA*2^(-1/12);
fG = fGS*2^(-1/12);
fFS = fG*2^(-1/12);
fF = fFS*2^(-1/12);
fE = fF*2^(-1/12);
fDS = fE*2^(-1/12);
fD = fDS*2^(-1/12);
fCS = fD*2^(-1/12);
fC = fCS*2^(-1/12);
fAS = fA*2^(1/12);
fB = fAS*2^(1/12);
fC2=fB*2^(1/12);

f=[fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2];

% the note

disp('Dear Katie:')
disp('Happy 22nd Birthday.')
disp('I am having difficulty deciding what to write here. So. Umm.')

disp(' ')

disp('"I have been, and always shall be, your friend."')
disp(' -Captain Spock, Star Trek II: The Wrath of Khan')

disp(' ')
disp('Anyway. I was told that this particular gift might be a bad one, ')
disp('but I''ve never been good at taking other people''s advice. So, ')
disp('make sure your speakers are on, but not incredibly high, and enjoy :-)')
disp(' ')
disp('Sincerely, Nick Leep')
disp(' ')
disp(' ')





time=0.3;
% where time is the length of an eighth note
x1=C1(time);

eighthC1=x1;
quarterD1=D1(2*time);
quarterC1=C1(2*time);
quarterF1=F1(2*time);
halfE1=E1(4*time);
quarterG1=G1(2*time);
halfF1=F1(4*time);
quarterC2=C2(2*time);
quarterA1=A1(2*time);
quarterE1=E1(2*time);
holdD1=D1(3.5*time);
eighthAS1=AS1(time);

x1=[eighthC1 0000 eighthC1 0000 quarterD1 0000 quarterC1 0000 quarterF1 0000 halfE1 0000 eighthC1 0000 eighthC1 0000 quarterD1 0000 quarterC1 0000 quarterG1 0000 halfF1 0000 eighthC1 0000 eighthC1 0000 quarterC2 0000 quarterA1 0000 quarterF1 0000 quarterE1 0000 holdD1 0000 eighthAS1 0000 eighthAS1 0000 quarterA1 0000 quarterF1 0000 quarterG1 0000 quarterF1];

disp('Press enter to continue')
pause
sound(x1,sf)
disp('(should I be hiding now?)')
return

function C1=C1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
C1=sin(2*pi*f(1)*t);
return

function CS1=CS1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
CS1=sin(2*pi*f(2)*t);
return

function D1=D1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
D1=sin(2*pi*f(3)*t);
return

function DS1=DS1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
DS1=sin(2*pi*f(4)*t);
return


function E1=E1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
E1=sin(2*pi*f(5)*t);
return

function F1=F1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
F1=sin(2*pi*f(6)*t);
return

function FS1=FS1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
FS1=sin(2*pi*f(7)*t);
return

function G1=G1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
G1=sin(2*pi*f(8)*t);
return

function GS1=GS1(time)
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
GS1=sin(2*pi*f(9)*t);
return

function A1=A1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
A1=sin(2*pi*f(10)*t);
return

function AS1=AS1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
AS1=sin(2*pi*f(11)*t);
return

function B1=B1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
B1=sin(2*pi*f(12)*t);
return

function C2=C2(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
C2=sin(2*pi*f(13)*t);
return
