function dia_bifurc_test_omega()
figure('Name','Diagrammes de bifurcations - Pendule forcé avec 2 ressorts');
% fig2=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,0)');
% fig3=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,1/1000)');
% fig4=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,2/1000)');

axis([0.9 2 -1 3])
title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
xlabel('A');
ylabel('d\theta/dt');

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time


for omega=0:0.1:15
  
   for i=0:2

   options = odeset('RelTol',1e-4);
   [t,y] = ode45('pendulum_double_ressort',time,[0 i/1000],options);


      if i==0
         plot(omega,y(1:end,2),'.','Color','r','Markersize',1);
         drawnow;
         hold on
      end

      if i==1
         plot(omega,y(1:end,2),'.','Color','b','Markersize',1);
         drawnow;
         hold on
      end

      if i==2
         plot(omega,y(1:end,2),'.','Color','g','Markersize',1);
         drawnow;
         hold on
      end

   end

end
