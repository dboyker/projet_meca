function diagramme_base()
echo off
clear

% aviobj = avifile('projet009.avi','quality',100,'fps',50,'Compression','none')

global k k1 k2 m l l1 l2 Longueur l0 A omega x0 x1 time
%m=5;k1=5;k2=10;l=10;k=0;A=500;omega=2;l1=l/2;l2=l/2;
%x0 = [1.1708 0];
%x1 = [1.1608 0];
%time = [0:0.2:100];

options = odeset('RelTol',1e-10);
[t,theta] = ode45(@pendulum_double_ressort,time,x0, options);
figure('NumberTitle','off','Name','Le pendule à double ressort','Position',[35 35 600 600],'Color','w');

[t2,theta2] = ode45(@pendulum_double_ressort,time,x1, options);


for i=2:max(size(theta))

  subplot(3,1,1,'replace')
  box on;grid on;
  title(('Le pendule à double ressort'))
  axis([-30 30 -15 15])
  xlabel('m');ylabel('m');

  line([0],[0],'Color','k','Marker','.','Markersize',30);
  
% First pendulum
  line([0 +l*sin(theta(i,1))],[  0 -l*cos(theta(i,1))],'Color','r','LineWidth',3);
  line([ +l*sin(theta(i,1)) 0],[-l*cos(theta(i,1)) -l*cos(theta(i,1))],'Color','c','LineWidth',2);
  line([ +l*sin(theta(i,1)) +l*sin(theta(i,1))],[-l*cos(theta(i,1)) 0],'Color','c','LineWidth',2);
  line([ +l*sin(theta(i,1))],[ -l*cos(theta(i,1))],'Color','r','Marker','.','Markersize',30);
 
 
% Second pendulum
  line([0 +l*sin(theta2(i,1))],[  0 -l*cos(theta2(i,1))],'Color','b','LineWidth',3);
  line([ +l*sin(theta2(i,1)) 0],[-l*cos(theta2(i,1)) -l*cos(theta2(i,1))],'Color','m','LineWidth',2);
  line([ +l*sin(theta2(i,1)) +l*sin(theta2(i,1))],[-l*cos(theta2(i,1)) 0],'Color','m','LineWidth',2);
  line([ +l*sin(theta2(i,1))],[ -l*cos(theta2(i,1))],'Color','b','Marker','.','Markersize',30);
  
  
  line([-30 30],[0 0],'Color','k','LineWidth',2);
  line([0 0],[-15 15],'Color','k','LineWidth',2);

  text(-16,7,['t(s)=',num2str(t(i))])

 % Energie=-m*9.81*l*cos(theta(i,1))+0.5*m*l^2*theta(i,2)^2-0.5*k1*(l*sin(theta(i,1))-l2)^2+0.5*k2*(l*cos(theta(i,1))-l1)^2
 % pour vérifier si l'équation du mvt est correcte.Energie est constante si k=0 et A =0

 
  
  
  % First plot
  subplot(3,1,2);
  box on;grid on;

  line(t(i-1:i),theta(i-1:i,1),'Color','r','LineWidth',2);
  line(t(i-1:i),theta2(i-1:i,1),'Color','b','LineWidth',2);
  xlabel('t(s)')
  ylabel('d\theta/dt(1/s)') % Pendule 1 rouge - Pendule 2 bleu
  drawnow;

  f = getframe(gcf);              %# Capture the current window

  %imwrite(f.cdata,['image',num2str(i),'.png']);  %# Save the frame data
  %aviobj = addframe(aviobj,F);

  
  % Second plot 
  subplot(3,1,3);
  box on;grid on;
  
  line(t(i-1:i),theta(i-1:i,2),'Color','r','LineWidth',2);
  line(t(i-1:i),theta2(i-1:i,2),'Color','b','LineWidth',2);
  xlabel('t(s)')
  ylabel('\theta (radian)') %% Pendule 1 rouge - Pendule 2 bleu
  drawnow;

  f = getframe(gcf);              %# Capture the current window

  if i == max(size(theta))
  imwrite(f.cdata,['diagramme_base',num2str(i),'.png']);  %# Save the frame data
  end
  %aviobj = addframe(aviobj,F);
end

%aviobj = close(aviobj)