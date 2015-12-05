function diagramme_phase()

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 time

figure('NumberTitle','off','Name','Le pendule à double ressort','Renderer','OpenGL','Color','w','Position',[100 100 500 500])
options = odeset('RelTol',1e-6);

 

%for j=1:15 % c'etait ce qu'il y avait dans un de leurs codes
  %[t,y] = ode45('pendulum_double_ressort',time,[0 j/5],options)

  [t,y] = ode45('pendulum_double_ressort',time,x0,options);
  [t,y2] = ode45('pendulum_double_ressort',time,x1,options);
  %@% [t,y3] = ode45('pendulum_double_ressort',time,x2,options);
  
      max(size(t))
   for i=2:max(size(t))
 
 
   %tic

   box on;grid on;
   title('Plan des Phases');xlabel('\theta');ylabel('d\theta/dt /s');hold on;
   
   %axis([-3 3 -3 3]) % si on veut avoir un système d'axes fixes, et pas
   %qui s'adaptent au fur et à mesure. Mais choisir de plus grandes valeurs.
   
   subplot(1,1,1);
   line([y(i-1,1) y(i,1)],[y(i-1,2) y(i,2)],'Color','r','LineWidth',1);
   line([y2(i-1,1) y2(i,1)],[y2(i-1,2) y2(i,2)],'Color','b','LineWidth',1);
   %@% line([y3(i-1,1) y3(i,1)],[y3(i-1,2) y3(i,2)],'Color','g','LineWidth',1);

   f = getframe(gcf);
   %if j == 15
   if i == max(size(t))
   %imwrite(f.cdata,['diagramme_phase',num2str(i),'.png']);  %# Uncomment to Save the frame data
   end

   drawnow;

   %while toc<0.0025;end;  % le mouvement est accéléré 100 fois

 

end

end
