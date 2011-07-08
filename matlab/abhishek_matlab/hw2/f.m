function [f_out]=f(x,t)
Zc=1/3;
% f_out=zeros(3,1);
% f_out(1,1)=(-x(3) + (t/(Zc*(x(1)-(0.08662/Zc)))) - (0.42748/((Zc^2)*sqrt(t)*x(1)*(x(1)+(0.08662/Zc)))));
% f_out(2,1)=(-x(3) + (t/(Zc*(x(2)-(0.08662/Zc)))) - (0.42748/((Zc^2)*sqrt(t)*x(2)*(x(2)+(0.08662/Zc)))));
% f_out(3,1)=(-(x(3)*(x(1)-x(2))) + ((t/Zc)*log((x(1)-(0.08662/Zc))/(x(2)-(0.08662/Zc)))) - (0.42748*(log(x(1)/x(2))/(Zc*sqrt(t)*0.08662)-log((x(1)+(0.08662/Zc))/((x(2)+(0.08662/Zc)))))));

aa = 0.4274802336;
bb = 0.0866403499;
vlr=x(1);
vvr=x(2);
psat=x(3);

% next, the equations. f1 and f2 are simply versions of the dimensionles
% Redlich-Kwong EOS, for liquid and vapor respectively:
f1=(t/(Zc*(vlr-bb/Zc))) - (aa/Zc^2)/(sqrt(t)*vlr*(vlr+bb/Zc))-psat;
f2=(t/(Zc*(vvr-bb/Zc))) - (aa/Zc^2)/(sqrt(t)*vvr*(vvr+bb/Zc))-psat;

% f3 is a modification or combination of these two. Actually, it's derived
% from the Maxwell Equal Area rule, applied to the VDW EOS:
f3=-psat*(vlr-vvr)+(t/Zc)*log((vlr-bb/Zc)/(vvr-bb/Zc))-(aa/(bb*Zc*sqrt(t)))*(log(vlr/vvr)-log((vlr+bb/Zc)/(vvr+bb/Zc)));

% finally, pack them all up and send them back:
f_out=[f1; f2; f3];