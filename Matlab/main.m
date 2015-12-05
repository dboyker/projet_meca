%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale légèrement différente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time
m=5;k1=5;k2=10;l=10;k=5;A=500;omega=2;l1=l/2;l2=l/2;

%%% Conditions Initiales %%%
%x0 = [1.1708 0];
%x1 = [1.1608 0];
%x2 = [1.1508 0];

x0 = [0 0];
x1 = [0 0.1];
x2 = [0 0.002];



%%% DIAGRAMME DE BASE %%%
%time = [0:0.2:100];
%diagramme_base()



%%% DIAGRAMME DE PHASE %%%
%time = [0:0.25:100];
%diagramme_phase()



%%% SECTION POINCARE %%%
%time = [0:2*pi/omega:10000]
time = [0:2*pi:1000];
sectionpoincare()



%%% DIAGRAMME BIFURCATION %%%
%diagramme_bifurcation()