function P=redkwgeqn(v,t)
global Zc
P = (t/(Zc*(v-0.08662/Zc)))-(0.42748/((Zc^2)*sqrt(t)*v*(v+(0.08662/Zc))));
