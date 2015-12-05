function sectionpoincare()

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time

figure('NumberTitle','off','Name','SCI','Renderer','OpenGL','Color','w','Position',[100 100 600 600])

options = odeset('RelTol',1e-4);

%[t1,theta1] = ode45('pendulum_double_ressort',[0:2*pi/omega:100],[0 0],options);
%[t2,theta2] = ode45('pendulum_double_ressort',[0:2*pi/omega:100],[0.01 0],options);

%plot(mod(theta1(100:10:end,1),2*pi),theta1(100:10:end,2),'.','Markersize',5)
%plot(mod(theta2(100:10:end,1),2*pi),theta2(100:10:end,2),'.','Color','red','Markersize',5)

[t,theta] = ode45('pendulum_double_ressort',time,x0, options);
[t1,theta1] = ode45('pendulum_double_ressort',time,x1, options);

for i=2:max(size(t))
    
   box on;hold on;
   title('Section de Poincare stroboscopique  - echantillonnage: 2.\pi/\omega');
   xlabel('\theta'); ylabel('d\theta/dt');


   plot(mod(theta(1000:10:end,1),2*pi), theta(1000:10:end,2),'.','Color','b','MarkerSize',2);
   plot(mod(theta1(1000:10:end,1),2*pi),theta1(1000:10:end,2),'.','Color','r','MarkerSize',2); 




f = getframe(gcf);
imwrite(f.cdata,['section_poincare','.png']);