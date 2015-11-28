#code de l énoncé, ne pas modifierecho offclearglobal k k1 k2 m l l1 l2 A omegam=5;k1=5;k2=10;l=10;k=0;A=500;omega=2;l1=l/2;l2=l/2;t=[0:0.2:100];x0=[1.1708;0];function dy = pendulum_double_ressort(x,t);global k k1 k2 m l l1 l2 A omegady=zeros(2,1);dy(1) = x(2);dy(2) = 1/(m*l*l)*(A*cos(omega*t)-k*x(2)-m*9.81*l*sin(x(1))+k2*l*sin(x(1))*(l*cos(x(1))-l2)+k1*l*cos(x(1))*(l*sin(x(1))-l1));endfunctiontheta = lsode("pendulum_double_ressort",x0,t);figure('NumberTitle','off','Name','Le pendule à double ressort','Position',[35 35 600 600],'Color','w');for i=2:max(size(theta))  subplot(2,1,1,'replace')  box on;grid on;  title(('Le pendule à double ressort'))  axis([-30 30 -15 15])  xlabel('m');ylabel('m');  line([0 +l*sin(theta(i,1))],[  0 -l*cos(theta(i,1))],'Color','r','LineWidth',3);  line([ +l*sin(theta(i,1)) 0],[-l*cos(theta(i,1)) -l*cos(theta(i,1))],'Color','b','LineWidth',2);  line([ +l*sin(theta(i,1)) +l*sin(theta(i,1))],[-l*cos(theta(i,1)) 0],'Color','b','LineWidth',2);  line([0 +l*sin(theta(i,1))],[  0 -l*cos(theta(i,1))],'Color','r','Marker','.','Markersize',30);  line([-30 30],[0 0],'Color','k','LineWidth',2);  line([0 0],[-15 15],'Color','k','LineWidth',2); % Energie=-m*9.81*l*cos(theta(i,1))+0.5*m*l^2*theta(i,2)^2-0.5*k1*(l*sin(theta(i,1))-l2)^2+0.5*k2*(l*cos(theta(i,1))-l1)^2 % pour vérifier si l'équation du mvt est correcte.Energie est constante si k=0 et A =0  text(-16,7,['t(s)=',num2str(t(i))])  subplot(2,1,2);  box on;grid on;  line(t(i-1:i),theta(i-1:i,1),'Color','b','LineWidth',2);  line(t(i-1:i),theta(i-1:i,2),'Color','r','LineWidth',2);  xlabel('t(s)')  ylabel('dq/dt - rouge (1/s) ou q - bleu (radian)')  drawnow;  %fname = sprintf('E:/frame2%02d.jpg',i); % pour sauver image par  %print(fname) % image l'animationend