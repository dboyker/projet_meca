function diagramme_bifurcation()global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 timem=5;k1=5;k2=10;l=10;k=0;A=500;omega=2;l1=l/2;l2=l/2;x0 = [0 pi/2];x1 = [1.7 0.1];x2 = [1.6 0.002];time = [0:5:100];figure('NumberTitle','off','Name','Le pendule � double ressort','Renderer','OpenGL','Color','w','Position',[100 100 500 500])options = odeset('RelTol',1e-6);for A=0:20:1000    A/1000*100    [t,theta] = ode45('pendulum_double_ressort',time,x0,options);  for i=1:max(size(t));     % if (abs(theta(i,2))<0.5)     plot(A,theta(i,1),'.','Color','r','MarkerSize',5);    hold on;          %  end  end%   [t,theta] = ode45('pendulum_double_ressort',time,x1,options);%    for i=1:max(size(t));%  %      plot(A,theta(i,2),'.','Color','b','MarkerSize',5);%      hold on;%    end%     [t,theta] = ode45('pendulum_double_ressort',time,x2,options);%    for i=1:max(size(t));%  %      plot(A,theta(i,2),'.','Color','g','MarkerSize',5);%      hold on;%    endendend