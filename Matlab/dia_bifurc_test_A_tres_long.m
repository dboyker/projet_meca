function dia_bifurc_test_A_tres_long()
figure('Name','Diagrammes de bifurcations - Pendule forcé avec 2 ressorts');

axis([0.9 2 -1 3])
title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
xlabel('A');
ylabel('d\theta/dt');

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time


for A=0:5:1500
  
   for i=0:2

   options = odeset('RelTol',1e-4);
   [t,y] = ode45('pendulum_double_ressort',time,[1.7 i/1000],options);


      if i==0
         plot(A,y(1:end,2),'.','Color','r','Markersize',1);
         drawnow;
         hold on
      end

      if i==1
         plot(A,y(1:end,2),'.','Color','b','Markersize',1);
         drawnow;
         hold on
      end

      if i==2
         plot(A,y(1:end,2),'.','Color','g','Markersize',1);
         drawnow;
         hold on
      end
   end
end

f = getframe(gcf);
imwrite(f.cdata,['DB_A=',num2str(k),num2str(k1),num2str(k2),num2str(A),num2str(omega),'.png']);