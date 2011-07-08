function [roots y Tr2 itnum]=hw1bisect
% Homework # 1 for CHE 439 Nick Leep

% Solution of the Redlich-Kwong Equation of State using the bisection
% method
global A B C Tc Pc Vc Zc aa bb ark brk

% Antoine equation coefficients for water, from Yaw's handbook:
A=8.05573;
B=1723.64;
C=233.076;
% for use with temperatures in C (range 0.01 - 373.98), outputs pressures
% in mmHg

% a and b are parameters in the Redlich-Kwong EOS. We won't actually be
% using them in the reduced equation, but there are parameters used to
% calculate them that will:
aa = 0.4274802336;
bb = 0.0866403499;


% other constants:
R = 8.314472; % kPa L / mol K
Tc=647; % K

% Pc=22060; % kPa

% I changed this later - the Antoine equation was giving me problems near
% the critical temperature. Fixing Pc like this makes it all better in the
% dimensionless form:
Pc=((10.^(A-B./((Tc-273.15)+C)))*0.13332239);

% next, parameters a and b for the EOS:
ark = (aa*R^2*Tc^2.5)/Pc;
brk = (bb*R*Tc)/Pc;

% Zc and Vc can both be found in tables, but these values will not work
% correctly with the Redlich-Kwong EOS. Instead, I solved the EOS for Zc
% (see below, function zc, as well).
Zc=fzero(@zc,1);
% And from Zc, Tc, and Pc, calculation of Vc: Vc=Zc*R*Tc/Pc;

% there is another way to calculate this:
Vc =brk*3.84732210186307; % for some reason, I was told this was better.

% Triple-point stuff:
Tt=273.16; % K
Ttr=Tt/Tc; % reduced

Pt=0.6117; % kPa
Ptr=Pt/Pc; % reduced

% Next, define a range of T's. I need at least ten, focusing on near the
% critical point.

% Range of temperatures:
numTs=20; % perhaps later I will make this an input option
Tr_min = 1.1*Ttr; % This is slightly above triple point;
tt=log(1/Tr_min)/log(10);
intr=logspace(0,tt,numTs);
% this logarithmically spaces values between 10^0 (or 1) and tt, which is
% our middle. finally, to get Tr I want to get the inverse of these:
Tr=1./intr;
% I went through all that madness so that I could get the temperatures
% spaced closer together near the critical point, and increasingly further
% apart away from it.

% Next: calculate the saturation pressures for each Tr:
psat=antoine(Tr);

% for all T's between  the triple and critical temperatures, there should
% be three roots of the equation psat - p_rk. I will start by calculating
% the ones on the left-hand side, or the liquid volume at the boiling
% point.

% The bisection algorithm reequires left and right bounds for each T. I
% need to have some kind of algorithm for calculating these.

% before starting, I can define some constants that I'll use in more than
% one place:

% tolerance:
epsilon=1e-7;

% so as to not run forever:
maxIterations = 1e5;
% I'll have to add some numIterations thing inside, of course.

% define the first right bound; at the critical point:
b=1.5;
for jj = 1:length(Tr)
    % define a b:
    a = 1.01*(bb/Zc);
    % this is slightly to the right of the zero at V = brk;

    % numIterations needs to be initialized:
    numIterations = 1;
    % finally, for any other stop conditions
    ier=false;
    while abs(b-a) > 2*epsilon && ~ier && numIterations < maxIterations
        % the first part of the bisection algorithm is to calculate the
        % midpoint of a and b:
        c = (a + b) / 2;
        % Store the values of c, for later use, see how it approached the
        % solution etc
        guess(numIterations) = c;

        % next, values of psat-prk are needed for a and b:
        fa = f(a,Tr(jj));
        fb = f(b,Tr(jj));
        fc = f(c,Tr(jj));
        % f(Vr,Tr) is a function below, see it for details

        % next, to find which side of c the signchange is on:
        if fa * fc < 0
            b = c;
        elseif fb * fc < 0
            a = c;
        else
            % this is an error-check kind of thing, for if there is no sign
            % change, or if the sign change is at exactly c
            ier = true;
        end
        numIterations = numIterations+1;
    end
    % store number of iterations:
    iter_left(jj)=numIterations;
    % store the root calculated:
    leftroot(jj)=c;
    % the root that we just calculated will be the right-hand bound for the
    % next isotherm:
    b=c;
end

% A test graphing confirmed that these roots are the correct ones. Next:
% the roots on the right-hand side, or the volume of the saturated liquid.

% define an a
a=0.9;
for jj=1:length(Tr)
    b = Tr(jj)/(psat(jj)*Zc); % from the ideal gas EOS

    % most of the code in here is the same as above, only the differences
    % are noted:
    numIterations = 1;
    ier=false;
    while abs(b-a) > 2*epsilon && ~ier && numIterations < maxIterations
        c = (a + b) / 2;
        % Store the values of c, for later use, see how it approached the
        % solution etc
        rightGuess(numIterations) = c;

        fa = f(a,Tr(jj));
        fb = f(b,Tr(jj));
        fc = f(c,Tr(jj));
        if fa * fc < 0
            b = c;
        elseif fb * fc < 0
            a = c;
        else
            ier = true;
        end
        numIterations = numIterations+1;
    end
    iter_right(jj)=numIterations;
    rightroot(jj)=c;

    % this time, I want the root calculated here to be the LEFT-hand bound
    % for the next iteration:
    a=c;
end

% Here I combine the roots into one vector, and make another vector y which
% stores p values (which will be plotted on the y-axis) for them:
y=[fliplr(psat) psat];
roots=[fliplr(leftroot) rightroot];

% plot it:
figure(1)
loglog(roots,y,'LineWidth',2)
hold on
loglog(roots,y,'o')

% Plot the EOS and straight psat lines on the same axes:
Vr=logspace((log(1.01*(bb/Zc))/log(10)),log(200000)/log(10),1000);
for j=1:length(Tr)
    for i=1:length(Vr)
        Pr(j,i)=rk(Vr(i),Tr(j));
        psat2(j,i)=antoine(Tr(j));
    end
end
loglog(Vr,Pr)
loglog(Vr,psat2)
hold off

% now plot just the binodal curve
figure(2)
loglog(roots,y,'-x')
title({'Binodal curve reconstruction, Bisection method','Nick Leep'})
xlabel('Dimensionless volume V_r')
ylabel('Dimentionless pressure P_r')


% clean up roots and y to return to the command line:
roots=roots';
y=y';
Tr2=[fliplr(Tr) Tr]';
% roots are vr; y is Pr;

% I want to return the number of iterations, too:
itnum=[fliplr(iter_left) iter_right]';

return

function p=antoine(Tr)
% returns saturation pressure (in reduced pressure) for a given reduced
% temperature.
global A B C Tc Pc
% T will be passed in reduced form; convert to c; if Tr == 1
%     p = 1;
% else
T=Tc*Tr;
t=T-273.15;
p=((10.^(A-B./(t+C)))*0.13332239)./Pc;
% end
return

function p = zc(z)
global aa bb
% function to aid in calculation of actual Zc
p = -1+ 1/(z-bb) - aa/(z^2*(1+bb/z));
return

function p = rk(v,t)
% reduced form of the Redlich-Kwong EOS
global Zc bb aa
p = (t/(Zc*(v-bb/Zc))) - (aa/Zc^2)/(sqrt(t)*v*(v+bb/Zc));

return

function p = f(v,t)
% returns the value of psat - p, where p is calculated by the redlich-kwong
% EOS. v and t should be reduced T & v's. This is the equation that we
% actually want to solve and find roots for...
p = antoine(t) - rk(v,t);
return
