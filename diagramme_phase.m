function diagramme_phase();


global k k1 k2 m l l1 l2 A omega

t=[0:0.2:100];
x0=[1.1708;0];

theta = lsode("pendulum_double_ressort",x0,t);
figure('NumberTitle','off','Name','Le pendule à double ressort','Position',[35 35 600 600],'Color','w');


for i=2:max(size(theta))
  subplot(2,1,1);
  box on;grid on;
  title(("Plan des phases"));
  axis([-5 5 -5 5]);
  line(theta(i-1:i,1),theta(i-1:i,2),"Color",'r','LineWidth',2);
  xlabel('theta(1)');
  ylabel('theta(2)');
  drawnow;
endfor

endfunction

