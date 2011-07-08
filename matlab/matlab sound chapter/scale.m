function scale
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

time=0.5;
x1=C1(time);
len=length(x1);
x1(len+1:2*len)=D1(time);
x1((2*len+1):3*len)=E1(time);
x1((3*len+1):4*len)=F1(time);
x1((4*len+1):5*len)=G1(time);
x1((5*len+1):6*len)=A1(time);
x1((6*len+1):7*len)=B1(time);
x1((7*len+1):8*len)=C2(time);

sound(x1,sf);
return

function C1=C1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
C1=sin(2*pi*f(1)*t);
return

function D1=D1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
D1=sin(2*pi*f(3)*t);
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

function G1=G1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
G1=sin(2*pi*f(8)*t);
return

function A1=A1(time)
global sf f
t = 0:1/sf:time-(1/sf);
% [fC fCS fD fDS fE fF fFS fG fGS fA fAS fB fC2]=f;
A1=sin(2*pi*f(10)*t);
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
