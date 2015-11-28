echo off
clear
# --------- parameters ---------
global k k1 k2 m l l1 l2 A omega
m=5;k1=5;k2=10;l=10;k=0;A=500;omega=2;l1=l/2;l2=l/2;
# --------- endparameters --------

t=[0:0.2:100];
x0=[1.1708;0];

function dy = pendulum_double_ressort(x,t);
global k k1 k2 m l l1 l2 A omega
dy=zeros(2,1);
dy(1) = x(2);
dy(2) = 1/(m*l*l)*(A*cos(omega*t)-k*x(2)-m*9.81*l*sin(x(1))+k2*l*sin(x(1))*(l*cos(x(1))-l2)+k1*l*cos(x(1))*(l*sin(x(1))-l1));
endfunction

theta = lsode("pendulum_double_ressort",x0,t);
figure('NumberTitle','off','Name','Le pendule à double ressort','Position',[35 35 600 600],'Color','w');

for i=2:max(size(theta))
  subplot(2,1,1);
  box on;grid on;
  title(("Plan des phases"));
  axis([-5 5 -5 5]);
  line(theta(i-1:i,1),theta(i-1:i,2),"Color",'r','LineWidth',2);
  xlabel('theta(1)')
  ylabel('theta(2)')
  drawnow;
end
