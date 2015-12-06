function sectionpoincare(periode_echan)

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time

figure('NumberTitle','off','Name','SCI','Renderer','OpenGL','Color','w','Position',[100 100 600 600])

options = odeset('RelTol',1e-4);

%[t1,theta1] = ode45('pendulum_double_ressort',[0:2*pi/omega:100],[0 0],options);
%[t2,theta2] = ode45('pendulum_double_ressort',[0:2*pi/omega:100],[0.01 0],options);

%plot(mod(theta1(100:10:end,1),2*pi),theta1(100:10:end,2),'.','Markersize',5)
%plot(mod(theta2(100:10:end,1),2*pi),theta2(100:10:end,2),'.','Color','red','Markersize',5)

[t,theta] = ode45('pendulum_double_ressort',time,x0, options);
[t1,theta1] = ode45('pendulum_double_ressort',time,x1, options);

   dim = [.1 .4 .9 .6];
   str = 'NAME (numbers) of the graphe = in order k, k1, k2, A, omega';
   annotation('textbox',dim,'string',str, 'FitBoxToText', 'on');
   
i = 1;
tmax = t(max(size(t)));
while i < tmax
   i % compteur à afficher ds la console
   %textbox(-2,2,['k=',k,'k1=',k1,'k2=',k2,'A=',A,'\omega =', omega]);
   


   box on;hold on;
   title('Section de Poincare stroboscopique  - echantillonnage: 2.\pi/\omega');
   xlabel('\theta'); ylabel('d\theta/dt');

   plot(theta(i,1), theta(i,2),'.','Color','b','MarkerSize',5);
   plot(theta1(i,1),theta1(i,2),'.','Color','r','MarkerSize',5); 
   drawnow;
   i = round(i + periode_echan);
   
end



f = getframe(gcf);
imwrite(f.cdata,['SP_k=',num2str(k),num2str(k1),num2str(k2),num2str(A),num2str(omega),'.png']);