function [fprime]=jacobian(x,t)
Zc=1/3;
% fprime = zeros(3,3);
% fprime(1,2)=0;
% fprime(2,1)=0;
% fprime(1,3)=-1;
% fprime(2,3)=-1;
% fprime(1,1)=((t/Zc)*(1/((x(1)-(0.08662/Zc))^2))) + ((0.42748/((Zc^2)*sqrt(t)))*(1/x(1))*(1/(x(1)+(0.08662/Zc)))*((1/x(1))+(1/(x(1)+(0.08662/Zc)))));
% fprime(2,2)=((t/Zc)*(1/((x(2)-(0.08662/Zc))^2))) + ((0.42748/((Zc^2)*sqrt(t)))*(1/x(2))*(1/(x(2)+(0.08662/Zc)))*((1/x(2))+(1/(x(2)+(0.08662/Zc)))));
% fprime(3,1)=-x(3) + (t/(Zc*(x(1)-(0.08662/Zc)))) - ((0.42748/0.08662)*(1/(Zc*sqrt(t)))*((1/x(1))-(1/(x(1)+(0.08662/Zc)))));
% fprime(3,2)=x(3) - (t/(Zc*(x(2)-(0.08662/Zc)))) + ((0.42748/0.08662)*(1/(Zc*sqrt(t)))*((1/x(2))-(1/(x(2)+(0.08662/Zc)))));
% fprime(3,3)=x(2)-x(1);

vlr=x(1);
vvr=x(2);
psat=x(3);

aa = 0.4274802336;
bb = 0.0866403499;

% the first four values were solve more-or-less trivially:
fprime(2,1)=0;
fprime(1,2)=0;
fprime(1,3)=-1;
fprime(2,3)=-1;

% the next two are the partial derivatives of f1 and f2 with respect to x1
% and x2 (or vlr and vvr) respectively; more complicated, but essentially
% identical to each other:
fprime(1,1)=-(t/Zc)/((vlr-(bb/Zc))^2) + (aa/(sqrt(t)*Zc))*(1/vlr)*(1/(vlr+(bb/Zc)))*((1/vlr)+(1/(vlr+(bb/Zc))));
fprime(2,2)=-(t/Zc)/((vvr-(bb/Zc))^2) + (aa/(sqrt(t)*Zc))*(1/vvr)*(1/(vvr+(bb/Zc)))*((1/vvr)+(1/(vvr+(bb/Zc))));

% derivatives of f3 with respect to vlr and vvr, respectively:
fprime(3,1)=-psat+t/(Zc*(vlr-bb/Zc))-(aa/(bb*Zc*sqrt(t)))*((1/vlr)-1/(vlr+bb/Zc));
fprime(3,2)=psat-t/(Zc*(vvr-bb/Zc))+(aa/(bb*Zc*sqrt(t)))*((1/vvr)-1/(vvr+bb/Zc));

% finally, the derivative of f3 with respect to psat, is fairly simple:
fprime(3,3)=-(vlr-vvr);
