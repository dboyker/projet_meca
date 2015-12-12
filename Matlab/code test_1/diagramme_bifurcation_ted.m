%work in progress 

function diagramme_bifurcation()

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 x2 time


figure('NumberTitle','off','Name','Le pendule à double ressort','Renderer','OpenGL','Color','w','Position',[100 100 500 500])
options = odeset('RelTol',1e-6);

for A=0:50:1000
   %A/1000*100;
  [t,theta] = ode45('pendulum_double_ressort',time,x0,options);
  [t,theta1] = ode45('pendulum_double_ressort',time,x1,options);
  [t,theta2] = ode45('pendulum_double_ressort',time,x2,options);

  tmax = max(size(t));
  
  for i=1:tmax;

    box on; hold on;
    title('Diagramme de phase en fonction de A');
    xlabel('A'); ylabel('d\theta/dt');

    plot(A,theta(i,2),'.','Color','r','MarkerSize',10);
    plot(A,theta1(i,2),'.','Color','b','MarkerSize',10);
    plot(A,theta2(i,2),'.','Color','g','MarkerSize',10);
    drawnow;
    


  end 

end

f = getframe(gcf);
imwrite(f.cdata,['DB__',num2str(k),num2str(k1),num2str(k2),num2str(A),num2str(omega),'.png']);
end

