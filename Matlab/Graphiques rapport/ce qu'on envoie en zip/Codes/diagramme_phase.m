function diagramme_phase()

global k k1 k2 m l l1 l2 A omega x0 x1 x2 time

figure('NumberTitle','off','Name','Le pendule à double ressort','Renderer','OpenGL','Color','w','Position',[100 100 500 500])
options = odeset('RelTol',1e-6);

%for m=5:3:20 %if 3D
  [t,y] = ode45('pendulum_double_ressort',time,x0,options);
  [t,y2] = ode45('pendulum_double_ressort',time,x1,options);
  [t,y3] = ode45('pendulum_double_ressort',time,x2,options);
  
   for i=2:max(size(t))

   box on;grid on;
   title('Plan des Phases');xlabel('\theta');ylabel('d\theta/dt /s');zlabel('m');hold on;
   
   %axis([-3 3 -3 3]) % si on veut avoir un système d'axes fixes, et pas
   %qui s'adaptent au fur et à mesure. Mais choisir de plus grandes valeurs.
   
   subplot(1,1,1);
   
   line([y(i-1,1) y(i,1)],[y(i-1,2) y(i,2)],[m m],'Color','r','LineWidth',1);hold on; %3D
   line([y2(i-1,1) y2(i,1)],[y2(i-1,2) y2(i,2)],[m m],'Color','b','LineWidth',1);hold on; %3D
   line([y3(i-1,1) y3(i,1)],[y3(i-1,2) y3(i,2)],[m m],'Color','g','LineWidth',1);hold on; %3D
   drawnow;

end
%end
f = getframe(gcf);
imwrite(f.cdata,['DP_=',num2str(k),num2str(k1),num2str(k2),num2str(A),num2str(omega),'.png']);

end
