% function P=antneqn(t)
function P=antneqn(Tr)
global Tc Tred A B C Pc
t=Tc*Tr;
T=t-273.15;
P=(10.^(A-(B./T+C)))./Pc;
