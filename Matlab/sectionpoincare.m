function sectionpoincare()

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time

figure('NumberTitle','off','Name','SCI','Renderer','OpenGL','Color','w','Position',[100 100 600 600])

options = odeset('RelTol',1e-4);

[t,theta] = ode45('pendulum_double_ressort',time,x0, options);
[t1,theta1] = ode45('pendulum_double_ressort',time,x1, options);

   dim = [.1 .4 .9 .6];
   str = 'NAME (numbers) of the graphe = in order k, k1, k2, A, omega';
   annotation('textbox',dim,'string',str, 'FitBoxToText', 'on');
   
tmax = max(size(t));

for i=1:tmax
   %i % compteur à afficher ds la console
   %textbox(-2,2,['k=',k,'k1=',k1,'k2=',k2,'A=',A,'\omega =', omega]);
   


   box on;hold on;
   title('Section de Poincare stroboscopique  - echantillonnage: 5');
   xlabel('\theta'); ylabel('d\theta/dt');

   plot(theta(i,1), theta(i,2),'.','Color','b','MarkerSize',5);
   plot(theta1(i,1),theta1(i,2),'.','Color','r','MarkerSize',5); 
   
   %plot(mod(theta(i,1),2*pi), theta(i,2),'.','Color','b','MarkerSize',5);
   %plot(mod(theta1(i,1),2*pi),theta1(i,2),'.','Color','r','MarkerSize',5); 
   drawnow;

end



f = getframe(gcf);
imwrite(f.cdata,['SP_k=',num2str(k),num2str(k1),num2str(k2),num2str(A),num2str(omega),'.png']);