clear all;
% clc;
Tc=405.7;
Ttrp=195.4;
Ttrpr=Ttrp/Tc; % reduced triple-point temp
Trmin=Ttrpr*1.1; % minimum temp, slightly above triple point
Nt=20;
tt=log(1/Trmin)/log(10);
intr=logspace(0,tt,Nt);
a1=1./intr;

% a1=linspace(Trmin,1,Nt);

Pc=11280;
Zc=1/3;
Vc=72.5;
R=8.314;
a=(0.4274802336*(R^2)*(Tc^2.5))/Pc;
b=(0.08664034995*R*Tc)/Pc;
A=7.58743;
B=1013.78;
C=248.825;
iter=[];
Xn=[1;1;1];
for i=1:length(a1)
    c=0;
    iter(i)=0;
    while c==0
        if Xn(1)==Xn(2)
            disp('Vl=Vv')
            if a1(i)==1
                c=1;
                Xn1=Xn;
                break
            else
                Xn=[0.9; 1.1; 1];
            end
        end       
        Xn1=Xn-(inv(jacobian(Xn,a1(i)))*(f(Xn,a1(i))));
        if norm(Xn1-Xn,inf)<0.00000001
            c=1;
        end
        iter(i)=iter(i)+1;
        error(i,iter(i))=norm(Xn1-Xn,inf);
        Xn=Xn1;
    end
    X(i,:)=Xn;
end
figure(1)
loglog(X(:,1),X(:,3),'-ob',X(:,2),X(:,3),'-ob')
title({'Reconstruction of Binodal Curve, Assignment2','Abhishek Prabha Kumar'})
xlabel('Dimensionless Volume')
ylabel('Dimensionless Pressure')
