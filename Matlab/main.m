%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale légèrement différente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
m=5;k1=0;k2=0;l=10;k=0;A=100;omega=1;l1=l/2;l2=l/2;
=======
<<<<<<< HEAD
>>>>>>> Stashed changes
m=5;k1=5;k2=10;l=10;k=0;A=800;omega=1;l1=l/2;l2=l/2;
=======
m=5;k1=5;k2=10;l=10;k=0;A=0;omega=1;l1=l/2;l2=l/2;
>>>>>>> origin/master
<<<<<<< Updated upstream
=======
>>>>>>> origin/master
>>>>>>> Stashed changes

%%% Conditions Initiales %%%
% note: x = [theta, theta0.]
% x0 = [1.7 0];
% x1 = [1.7 0.001];
% x2 = [1.7 0.002];

x0 = [0 0];
x1 = [0 0.001];
x2 = [0 0.002];


%%% DIAGRAMME DE BASE %%%
time = [0:0.2:30];
%diagramme_base()


%%% DIAGRAMME DE PHASE %%%
time = [0:0.25:60];
%diagramme_phase()


%%% SECTION POINCARE %%%
time = [0:2*pi/omega:3000];
%time = [0:1:3000];
%sectionpoincare()


%%% DIAGRAMME BIFURCATION %%%
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
time=[0:20:500];
=======
<<<<<<< HEAD
>>>>>>> Stashed changes
time=[0:50:500];
=======
time=[0:10:500];
>>>>>>> origin/master
<<<<<<< Updated upstream
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
%diagramme_bifurcation()
%dia_bifurc_test_omega()
dia_bifurc_test_A()
%dia_bifurc_test_A_long()
%dia_bifurc_test_A_tres_long()