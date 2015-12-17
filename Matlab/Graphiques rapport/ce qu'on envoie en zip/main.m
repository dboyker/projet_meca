%%% """" SUR LES DIAGRAMMES, CODE COULEUR """" %%%

% ROUGE = PENDULE 1
% BLEU = PENDULE 2 (condition initiale l�g�rement diff�rente => maybe chaos
% VERT = PENDULE 3 idem pendule si besoin (bifurcation)

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time

m=5;k1=5;k2=10;l=10;k=25;A=70;omega=1;l1=l/2;l2=l/2;

%%% Conditions Initiales %%%
% note: x = [theta, theta0.]
x0 = [1.7 0];
x1 = [1.7 0.001];
x2 = [1.7 0.002];

% x0 = [0 0];
% x1 = [0 0.001];
% x2 = [0 0.002];


%%% DIAGRAMME DE BASE %%%
time = [100:0.2:200];
%diagramme_base()


%%% DIAGRAMME DE PHASE %%%
% time = [0:0.25:100];
time = [0:10*pi:10*pi*160];
%diagramme_phase()


%%% SECTION POINCARE %%%
%time = [0:10:3000];
time = [0:10*pi:360*pi*10];
sectionpoincare()


%%% DIAGRAMME BIFURCATION %%%
time=[10*pi:2*pi*10:2*pi*200];
%diagramme_bifurcation()
%dia_bifurc_test_omega()
%time=[10*pi:20*pi:460*pi];
dia_bifurc_test_A()