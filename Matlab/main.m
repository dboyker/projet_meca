%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale légèrement différente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time
m=5;k1=5;k2=10;l=10;k=0;A=230;omega=1;l1=l/2;l2=l/2;

%%% Conditions Initiales %%%
% note: x = [theta, theta0.]
x0 = [1.71 0];
x1 = [1.7 0];
x2 = [1.69 0];


%%% DIAGRAMME DE BASE %%%
time = [0:0.2:60];
%diagramme_base()


%%% DIAGRAMME DE PHASE %%%
time = [0:0.25:60];
%diagramme_phase()


%%% SECTION POINCARE %%%
%time = [0:2*pi/omega:10000]
time = [0:1:1000];
%sectionpoincare()


%%% DIAGRAMME BIFURCATION %%%
time=[0:50:500];
%diagramme_bifurcation()
%dia_bifurc_test_omega()
dia_bifurc_test_A()