
global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 time
m=5;k1=5;k2=10;l=10;k=0;A=500;omega=2;l1=l/2;l2=l/2;

%%% DIAGRAMME DE BASE %%%
x0 = [1.1708 0];
x1 = [1.1608 0];
time = [0:0.2:100];
%diagramme_base()

%%% DIAGRAMME DE PHASE %%%
time = [0:0.25:10];
%diagramme_phase()

%%% SECTION POINCARE %%%
% sectionpoincare()

%%% DIAGRAMME BIFURCATION %%%
diagramme_bifurcation()