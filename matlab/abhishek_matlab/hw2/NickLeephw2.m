function [x error itnum Tr]=NickLeephw2
% CHE 439 Hw 2
% Nick Leep

% Numerical solution of the Redlich Kwong EOS for liquid and vapor specific
% volumes and vapor pressure for water, using Newton's algorithm for
% systems of nonlinear equations.

% close all

%*************************************************************************%
% start by defining some constants. Since they'll be used in other
% functions, make the global:
global Tc Pc Vc Zc aa bb
% Pc=22060; % kPa
Zc=1/3; % defined in the problem statement
R = 8.314472; % kPa L / mol K
% Tc=647; % K
Pc=11280;
Tc=405.7;

Vc=Zc*R*Tc/Pc;

% The coefficients used in calculating the Redlich-Kwong parameters a and
% b:
aa = 0.4274802336;
bb = 0.0866403499;

% % Triple-point stuff:
Tt=273.16; % K
Ttr=Tt/Tc; % reduced
%*************************************************************************%


% Define a range of temperatures; this code was taken from homework 1
numTs=20;
% minimum temperature:
Tr_min = 1.1*Ttr; % This is slightly above triple point;
tt=log(1/Tr_min)/log(10);
intr=logspace(0,tt,numTs); 
% this logarithmically spaces values between 10^0 (or 1) and tt, which is
% our middle. finally, to get Tr I want to get the inverse of these:
Tr=1./intr;
% I went through all that madness so that I could get the temperatures
% spaced closer together near the critical point, and increasingly further
% apart away from it.

% initialize a vector "itnum" - number of iterations, for each temperature:
itnum=[];

% We already know the answers at the triple point, so I'll use them as the
% first guess
xn=[1; 1; 1];

%*************************************************************************%

% Now, to do the actual solution. A for loop is used to cycle through the
% temperatures:
for ii=1:length(Tr)
    
    % initialize a flag, to be used inside the solver:
    flag = false;
    % When we start, the number of iterations is zero:
    itnum(ii) = 0;% itnum(ii)=zeros(length(Tr)); 

    % Now, the actual solver; it's done inside a while loop
    while ~flag
        % There is a problem with one of the equations where the two
        % volumes are equal; you end up dividing by zero. This statement
        % checks for that:
        if xn(1)==xn(2)
            disp('Warning: Vv = Vl')
            % In the case that we're at the critical temperature, we know
            % that it's the critical point. Then, we can break out of the
            % loop with the actual answer:
            if Tr(ii) == 1
                flag = true;
                % We need xn1 as well as xn, so, store the value there too:
                xn1=xn;
                break
            else
                % otherwise, we're below the critical point, so we take
                % guesses that are a bit more spread apart:
                xn=[.9; 1.1; 1];
            end
        end
        % Assuming that that's all taken care of, the next line is the
        % iterative method for the Newton method for systems:
        xn1=xn-(inv(jacobian(xn,Tr(ii)))*f(xn,Tr(ii)));
        % where jacobian and f are defined below.
        
        % Next, check to see if we're close enough:
        if norm(xn1-xn,inf) < 1e-10
            % this means we're close enough; break out of the while loop:
            flag = true;
        end
        
        % Next, check to see if the maximum number of iterations is reached
        if itnum >= 1000
            disp('Max iterations reached')
            flag = true;
            break
        end
        
        % store up the number of iterations:
        itnum(ii)=itnum(ii)+1;
        % store up the norms, for use in convergence analysis
        error(ii,itnum(ii))=norm(xn1-xn,inf);
        % finally, store the xn1 calculated for use the next time around
        % the loop:
        xn=xn1;
    end
    % store the value calculated in the matrix x
    x(ii,:)=xn;
    
    % Now, xn is still floating around. The nice thing is, it will be our
    % first guess for the next temperature, so we WANT it to still be
    % there.
end

%*************************************************************************%

% Plot it:
figure(5)
loglog(x(:,1),x(:,3),'-o',x(:,2),x(:,3),'-ob')
title({'Binodal curve reconstruction, Homework 2','Nick Leep'})
xlabel('Dimensionless volume V_r')
ylabel('Dimentionless pressure P_r')

% convergence
figure(2)
% Pull out the "error" from temperature 4:
error2=error(4,:);
% get rid of all terms that are zero:
error2=error2(error2~=0);
% Make another one, to match up with:
error3=error2(1:length(error2)-1);
% One value less is needed. We chopped that value off the end of error3,
% but it should be off of the beginning of error2 so they match up right:
error2=error2(2:(length(error2)));
% finally, since we expect quadratic convergence, error2 should be squared:
error2=error2.^2;
% plot it:
plot(error2,error3)
title({'Convergence for Homework 2'; 'Fourth Temperature'})
xlabel('x_n')
ylabel('x_n_+_1^2')

% repeat for another temperature
figure(3)
error4=error(5,:);
error4=error4(error4~=0);
error5=error4(1:length(error4)-1);
error4=error4(2:length(error4));
error4=error4.^2;
plot(error4,error5)
title({'Convergence for Homework 2'; 'Fifth Temperature'})
xlabel('x_n')
ylabel('x_n_+_1^2')

return

function f=f(x,t)
% function f(x,t) is the function we're trying to get to zero above. f(1)
% is for the liquid volume; f(2) is the vapor volume; f(3) is for the
% pressure.

% Three predefined constants are neede from above:
global Zc aa bb

% next, for my own ease of writing these equations, I pulled out values
% from x so that they could have more intuitive names in the equations
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
f=[f1; f2; f3];
return

function X=jacobian(x,t)
% function jacobian(x,t) does exactly what it sounds like: returns the
% value for the jacobian at a given set of three variables x at a given
% temprature t.

% three constants will be needed:
global Zc aa bb

% next, for my own ease of writing these equations, I pulled out values
% from x so that they could have more intuitive names in the equations
vlr=x(1);
vvr=x(2);
psat=x(3);

% the first four values were solve more-or-less trivially:
X(2,1)=0;
X(1,2)=0;
X(1,3)=-1;
X(2,3)=-1;

% the next two are the partial derivatives of f1 and f2 with respect to x1
% and x2 (or vlr and vvr) respectively; more complicated, but essentially
% identical to each other:
X(1,1)=-(t/Zc)/((vlr-(bb/Zc))^2) + (aa/(sqrt(t)*Zc))*(1/vlr)*(1/(vlr+(bb/Zc)))*((1/vlr)+(1/(vlr+(bb/Zc))));
X(2,2)=-(t/Zc)/((vvr-(bb/Zc))^2) + (aa/(sqrt(t)*Zc))*(1/vvr)*(1/(vvr+(bb/Zc)))*((1/vvr)+(1/(vvr+(bb/Zc))));

% derivatives of f3 with respect to vlr and vvr, respectively:
X(3,1)=-psat+t/(Zc*(vlr-bb/Zc))-(aa/(bb*Zc*sqrt(t)))*((1/vlr)-1/(vlr+bb/Zc));
X(3,2)=psat-t/(Zc*(vvr-bb/Zc))+(aa/(bb*Zc*sqrt(t)))*((1/vvr)-1/(vvr+bb/Zc));

% finally, the derivative of f3 with respect to psat, is fairly simple:
X(3,3)=-(vlr-vvr);

return