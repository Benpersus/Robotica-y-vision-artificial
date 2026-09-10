close all
clear 
clf

l1 = input("Indica la longitud del primer eslabon eslabon [m]: ");
l2 = input("Indica la longitud del segundo eslabon eslabon [m]: ");
l3 = input("Indica la longitud del tercer eslabon eslabon [m]: ");
fprintf("[DEBUG] Eslabon 1: %f | Eslabon 2: %f | Eslabon 3: %f \n", l1, l2, l3);

DibujaEjes(l1+l2+l3);

rot_1 = input("Indica el angulo de rotacion del primer eslabon [rad]: ");
rot_2 = input("Indica el angulo de rotacion del segundo eslabon [rad]: ");
rot_3 = input("Indica el angulo de rotacion del tercer eslabon [rad]: ");
fprintf("[DEBUG] Rotación 1: %f | Rotación 2: %f | Rotación 3: %f \n", rot_1, rot_2, rot_3);

num_pasos = 50;
ang1 = linspace(0, rot_1, num_pasos);
ang2 = linspace(0, rot_2, num_pasos);
ang3 = linspace(0, rot_3, num_pasos);
%% Traslación 2 eslabones
for i = 1:num_pasos 
    clf
    % %%EJES PRINCIPALES
    % line([0 5],[0 0],[0 0],'color','red','linewidth', 3)
    % line([0 0],[0 5],[0 0],'color','green','linewidth', 3)
    % axis equal
    % hold on
    DibujaEjes(l1+l2+l3);

    %Primera articulación
    joint1 = [0 0]'; %Scatter
    scatter(joint1(1), joint1(2),100,'filled','MarkerFaceColor','blue');
    hold on

    % Segunda articulación
    joint2_0 = [l1 0 0 1]';
    joint2 = RotacionXYZ(0,0,ang1(i), joint2_0);
    
     scatter(joint2(1), joint2(2),100,'filled','MarkerFaceColor','blue');
    
    % Tercera articulación
    joint3_0 = [l1+l2 0 0 1]';
    joint3 = RotacionXYZ(0,0,ang2(i), joint3_0);
     
     scatter(joint3(1), joint3(2),100,'filled','MarkerFaceColor','blue');

     % Punto final
     EF_0 = [l1+l2+l3 0 0 1]';
     EF = RotacionXYZ(0,0,ang3(i), EF_0);
     scatter(EF(1), EF(2),100,'filled','MarkerFaceColor','blue');

    %%Eslabones
    %Primer eslabón
    line([joint1(1) joint2(1)],[joint1(2) joint2(2)],[0 0],'color','black','linewidth', 2);

    %Segundo eslabón
    line([joint2(1) joint3(1)],[joint2(2) joint3(2)],[0 0],'color','black','linewidth', 2);

    %Tercer eslabón
    line([joint3(1) EF(1)],[joint3(2) EF(2)],[0 0],'color','black','linewidth', 2);

    pause(0.1)
end