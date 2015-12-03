function diagramme_phase()

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 time

figure('NumberTitle','off','Name','Le pendule � double ressort','Renderer','OpenGL','Color','w','Position',[100 100 500 500])
options = odeset('RelTol',1e-6);

 

for j=1:15

  [t,y] = ode45('pendulum_double_ressort',time,[0 j/5],options);

   for i=2:max(size(t))
 
   %tic

   box on;grid on;
   title('Plan des Phases');xlabel('\theta');ylabel('d\theta/dt /s');hold on
   %axis([-3 3 -3 3])
   subplot(1,1,1);line([y(i-1,1) y(i,1)],[y(i-1,2) y(i,2)],'Color','r','LineWidth',1);

   f = getframe(gcf);
   if j == 15
   imwrite(f.cdata,['diagramme_phase',num2str(j),'.png']);  %# Save the frame data
   end

   drawnow;

   %while toc<0.0025;end;  % le mouvement est acc�l�r� 100 fois

 

end

end