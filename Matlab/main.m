%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale légèrement différente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time
<<<<<<< HEAD
m=5;k1=5;k2=10;l=10;k=0;A=800;omega=1;l1=l/2;l2=l/2;
=======
m=5;k1=5;k2=10;l=10;k=0;A=0;omega=1;l1=l/2;l2=l/2;
>>>>>>> origin/master

%%% Conditions Initiales %%%
% note: x = [theta, theta0.]
x0 = [1.701 0];
x1 = [1.7 0];
x2 = [1.699 0];


%%% DIAGRAMME DE BASE %%%
time = [0:0.2:30];
%diagramme_base()


%%% DIAGRAMME DE PHASE %%%
time = [0:0.25:60];
%diagramme_phase()


%%% SECTION POINCARE %%%
%time = [0:2*pi/omega:10000]
time = [0:1:5000];
%sectionpoincare()


%%% DIAGRAMME BIFURCATION %%%
<<<<<<< HEAD
time=[0:50:500];
=======
time=[0:10:500];
>>>>>>> origin/master
%diagramme_bifurcation()
%dia_bifurc_test_omega()
dia_bifurc_test_A()
dia_bifurc_test_A_long()
dia_bifurc_test_A_tres_long()