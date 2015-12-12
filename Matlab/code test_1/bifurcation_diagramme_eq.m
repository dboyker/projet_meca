function dy = bifurcation_diagramme_eq(t,y)

global c w k

dy = zeros(2,1);   

dy(1) = y(2);

dy(2) = -k*y(2)-sin(y(1))+c*cos(w*t);