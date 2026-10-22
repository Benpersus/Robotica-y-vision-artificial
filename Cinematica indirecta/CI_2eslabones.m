close all
clear 
clf

l1 = input("Indica la longitud del primer eslabon eslabon [m]: ");
l2 = input("Indica la longitud del segundo eslabon eslabon [m]: ");
%fprintf("[DEBUG] Eslabon 1: %f | Eslabon 2: %f\n", l1, l2);

X_EF = input("Indica la posicion del efector final en X [m]: ");
Y_EF = input("Indica la posicion del efector final en Y [m]: ");
while abs(l1-l2) > (sqrt(X_EF^2 + Y_EF^2)) || (sqrt(X_EF^2 + Y_EF^2)) > (l1 + l2)
    fprintf("El efector final elegido es imposible de alcanzar\n");

    X_EF = input("Indica la posicion del efector final en X [m]: ");
    Y_EF = input("Indica la posicion del efector final en Y [m]: ");
end

DibujaEjes(l1+l2);

r = sqrt(X_EF^2 + Y_EF^2);

% Cálculo de theta_1
rho = atan2(Y_EF,X_EF);
alpha = acos((l1^2+r^2-l2^2)/(2*l1*r));
Theta_1 = rho + alpha;

% Cálculo de theta_1
gamma = acos((l1^2+l2^2-r^2)/(2*l1*l2));
Theta_2 = pi - gamma;

%Primera articulación
    joint1_0 = [l1 0 0 1]'; %Scatter
    joint1 = RotacionXYZ(0,0,Theta_1, joint1_0);
    scatter(joint1(1), joint1(2),100,'filled','MarkerFaceColor','blue');
    hold on

    % Segunda articulación
    joint2_0 = [l2 0 0 1]';
    joint2 = RotacionXYZ(0,Theta_2,0, joint2_0);
    
     scatter(joint2(1), joint2(2),100,'filled','MarkerFaceColor','blue');

    %%Eslabones
    %Primer eslabón
    line([0 joint1(1)],[0 joint1(2)],[0 0],'color','black','linewidth', 2);

    %Segundo eslabón
    line([joint1(1) joint2(1)],[joint1(2) joint2(2)],[0 0],'color','black','linewidth', 2);

