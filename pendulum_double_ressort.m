function dy = pendulum_double_ressort(x,t);
global k k1 k2 m l l1 l2 A omega
dy=zeros(2,1);
dy(1) = x(2);
dy(2) = 1/(m*l*l)*(A*cos(omega*t)-k*x(2)-m*9.81*l*sin(x(1))+k2*l*sin(x(1))*(l*cos(x(1))-l2)+k1*l*cos(x(1))*(l*sin(x(1))-l1));
endfunction
