fig1=figure('Name','Diagrammes de bifurcations - Pendule forcé');
% fig2=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,0)');
% fig3=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,1/1000)');
% fig4=figure('Name','Diagrammes de bifurcations - Pendule forcé - CI: (0,2/1000)');

global c w k
k=0.5;
w=2/3;

for c=0.9:0.01:2
   c;
   for i=0:2
   i;
   clear y

   options = odeset('RelTol',1e-4);
   [t,y] = ode45('bifurcation_diagramme_eq',[0:1*2*pi/w:1*2*pi/w*50],[0 i/1000],options);


   if i==0
      figure(fig1)
      plot(c,y(30:50,2),'.','Color','r','Markersize',2);
      drawnow;
      hold on
      %figure(fig2)
      %plot(c,y(30:50,2),'rs','Markersize',2)
      drawnow;
      hold on
   end

if i==1
      figure(fig1)
      plot(c,y(30:50,2),'.','Color','b','Markersize',2);
      drawnow;
      hold on
      %figure(fig3)
      %plot(c,y(30:50,2),'bs','Markersize',2)
      drawnow;
      hold on
   end

   if i==2
      figure(fig1)
      plot(c,y(30:50,2),'.','Color','g','Markersize',2);
      drawnow;
      hold on
      %figure(fig4)
      %plot(c,y(30:50,2),'gs','Markersize',2)
      drawnow;
      hold on
   end

   end

end

figure(fig1);
axis([0.9 2 -1 3])
title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
xlabel('c');
ylabel('d\theta/dt');

 
% figure(fig2);
% axis([0.9 2 -1 3])
% title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
% xlabel('c');
% ylabel('d\theta/dt');
% 
%  
% figure(fig3);
% axis([0.9 2 -1 3])
% title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
% xlabel('c');
% ylabel('d\theta/dt');
% 
%  
% figure(fig4);
% axis([0.9 2 -1 3])
% title('Diagramme de bifurcation du pendule forcé - paramètre: amplitude du terme forcé');
% xlabel('c');
% ylabel('d\theta/dt');