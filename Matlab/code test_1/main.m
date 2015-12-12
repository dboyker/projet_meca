%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale légèrement différente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time
m=5;k1=2;k2=3;l=10;k=0;A=500;omega=5;l1=l/2;l2=l/2;
%%% Conditions Initiales %%%
% note: x = [theta, theta0.]
%x0 = [1.708 0];
%x1 = [1.7 0];
%x2 = [1.1508 0];

x0 = [0 0];
x1 = [0 0.1];
x2 = [0 0.002];



%%% DIAGRAMME DE BASE %%%               OK
%time = [0:0.2:60];
%diagramme_base()

%%% DIAGRAMME DE PHASE %%%              OK
%time = [0:0.25:200];
%diagramme_phase()



%%% SECTION POINCARE %%%                OK
%time = [0:2*pi/omega:10000];
%time = [0:10000];
%sectionpoincare()



%%% DIAGRAMME BIFURCATION %%%
%m=5;k1=3;k2=5;l=5;k=0;A=100;omega=2;l1=l/2;l2=l/2;
time=[0:10:500];
%diagramme_bifurcation()
dia_bifurc_test_1()