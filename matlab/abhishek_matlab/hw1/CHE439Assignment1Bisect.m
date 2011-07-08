clear
clc

% HW1
% CHE 439
% Solution of Redlich-Kwong equation using the bisection method
global Zc Tc A B C Pc Tred
Tc=405.7; % Critical temperature of ammonia in K
Ttrp=195.4; % Triple point temperature of ammonia in K
Pc=11280; % Critical pressure of ammonia in kPa
Zc=0.242; % Critical compressibility factor of ammonia
Vc=72.5; % Critical volume
R=8.314; % Universal gas constant in kPa.L/mol.K

%Redlich-Kwong EOS coefficients
a=(0.42748*(R^2)*(Tc^2.5))/Pc;
b=(0.08662*R*Tc)/Pc;

% Antoine Equation coefficients
A=7.58743;
B=1013.78;
C=248.825;
% Vl=0;
% Vr=0.01;
eps=0.0000000001; % Tolerance for error
itmax=10000; % Limit for maximum number of iterations
Vr=1.2; % Defining a right bound
Nt=20; % Number of temperatures used
Ttrpr=Ttrp/Tc; % Reduced triple point of ammonia
t1=1.05*Ttrpr; % Defining a temperature slightly above triple point
t2=log(1/t1)/log(10);
Tspc=logspace(0,t2,Nt);% Logarithmically spaces values between 1 and t2.
Tred=1./Tspc; % This will closely space the temperatures near the critical point and place other temperatures far apart

for al=1:length(Tred)
    Vl=1.01*(0.08662/Zc);
    itnum=1; % Initializing the number of iterations, which is 1 to begin with.
    c=0;

    while abs(Vr-Vl)>eps && itnum < itmax
        mp=(Vl+Vr)/2; % Calculates the midpoint of Vl and Vr.
        lgss(itnum)=mp; % Stores the value of mp for future use.

        % Calculating the Psat-Prk values for Vl and Vr
        eqnl=eqn(Vl,Tred(al));
        eqnr=eqn(Vr,Tred(al));
        eqnmp=eqn(mp,Tred(al));

        % Now looking for the sign change
        if (eqnl*eqnmp) < 0
            Vr=mp;
        else if (eqnr*eqnmp) < 0
                Vl=mp;
            else
                %In this case, there is no sign change or the sign change
                %happens at c
                c=1;
            end
        end
        itnum=itnum+1;
    end
    itl(al)=itnum; % Stores the number of iterations
    lsln(al)=mp; % Stores the calculated root
    Vr=mp; %The root calculated is the right hand bound for next isotherm
end

Vl=0.9; % We define a root on the left hand side, we guess a value for Vl

% The code is similar to above
for al=1:length(Tred)
    Vr=Tred(al)/(antneqn(Tred(al))*Zc);
    itnum=1;
    while abs(Vr-Vl)>eps && itnum<itmax
        mp=(Vl+Vr)/2;
        rgss(itnum)=mp;
        eqnl=eqn(Vl,Tred(al));
        eqnr=eqn(Vr,Tred(al));
        eqnmp=eqn(mp,Tred(al));
        if eqnl*eqnmp<0
            Vr=mp;
        else if eqnr*eqnmp<0
                Vl=mp;
            else if eqnr*eqnmp==0
                    break
                end
            end
        end
        itnum=itnum+1;
    end
    itr(al)=itnum;
    rsln(al)=mp;
    Vl=mp; % The root calculated here is the left hand bound for next iteration
end

% Combining roots into one vector which stores the p values
y=[fliplr(Psat) Psat];
soln=[fliplr(lsln) rsln];
numofit=[fliplr(itl) itr]';

% Plotting it
figure(1)
loglog(soln,y)
hold on
loglog(soln,y)

% Plotting equations of state and Psat lines on the same axis.
Vred=logspace((log(1.01*(0.08662/Zc))/log(10)),log(50000)/log(10),1000);
for i=1:length(Tred)
    for j=1:length(Vred)
        Pr(i,j)=rk(Vred(j),Tred(i));
        psat2(i,j)=antneqn(Tred(i));
    end
end
loglog(Vr,Pr)
loglog(Vr,psat2)
hold off

% Plotting the Binodal curve
figure(2)
plot(soln,y)
title({'Reconstruction of Binodal Curve, Method of Biscetion','Abhishek Prabha Kumar'})
xlabel('Dimensionless Volume Vred')
ylabel('Dimensionless Pressure Pred')
