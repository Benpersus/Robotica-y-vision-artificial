close all
clear 
clf

l1 = input("Indica la longitud del primer eslabon eslabon [m]: ");
l2 = input("Indica la longitud del segundo eslabon eslabon [m]: ");
l3 = input("Indica la longitud del tercer eslabon eslabon [m]: ");
fprintf("[DEBUG] Eslabon 1: %f | Eslabon 2: %f | Eslabon 3: %f \n", l1, l2, l3);

rot_1 = input("Indica el angulo de rotacion del primer eslabon [rad]: ");
rot_2 = input("Indica el angulo de rotacion del segundo eslabon [rad]: ");
rot_3 = input("Indica el angulo de rotacion del tercer eslabon [rad]: ");

num_pasos = 50;
ang1 = linspace(0, rot_1, num_pasos);
ang2 = linspace(0, rot_2, num_pasos);
ang3 = linspace(0, rot_3, num_pasos);
%% Traslación 2 eslabones
for i = 1:num_pasos 
    clf
    %%EJES PRINCIPALES
    line([0 5],[0 0],[0 0],'color','red','linewidth', 3)
    line([0 0],[0 5],[0 0],'color','green','linewidth', 3)
    axis equal
    hold on

    %Primera articulación
    joint1 = [0 0]'; %Scatter
    scatter(joint1(1), joint1(2),100,'filled','MarkerFaceColor','blue');
    hold on

    
    %Segunda articulación   
    theta1 = ang1(i);   
    l1x = l1*cos(theta1);
    l1y = l1*sin(theta1);
    l1z = 0;

    joint2 = [l1x l1y l1z 1]';
    scatter(joint2(1), joint2(2),100,'filled','MarkerFaceColor','blue');
    
    % Punto final
    l2 = 1.5;
    theta2 = 0; 
    l2x = l2*cos(theta1 + theta2);
    l2y = l2*sin(theta1 + theta2);
    l2z = 0;

    EFx = l1x + l2x;
    EFy = l1y + l2y;
    EFz = l1z + l2z;
    EF = [EFx EFy EFz 1]';

    scatter(EF(1), EF(2),100,'filled','MarkerFaceColor','blue');

    %%Eslabones
    %Primer eslabón
    line([joint1(1) joint2(1)],[joint1(2) joint2(2)],[0 0],'color','black','linewidth', 2);

    %Segundo eslabón
    line([joint2(1) EF(1)],[joint2(2) EF(2)],[0 0],'color','black','linewidth', 2);

    pause(0.05)
end

% for i2 = 1:num_pasos 
%     clf
%     %%EJES PRINCIPALES
%     line([0 5],[0 0],[0 0],'color','red','linewidth', 3)
%     line([0 0],[0 5],[0 0],'color','green','linewidth', 3)
%     axis equal
%     hold on
% 
%     %Primer eslabón
%     scatter(joint1(1), joint1(2),100,'filled','MarkerFaceColor','blue');
%     scatter(joint2(1), joint2(2),100,'filled','MarkerFaceColor','blue');
%     line([joint1(1) joint2(1)],[joint1(2) joint2(2)],[0 0],'color','black','linewidth', 2);
% 
%     % Punto final
% 
%     theta2 = ang2(i2); 
%     l2x = l2*cos(theta1 + theta2);
%     l2y = l2*sin(theta1 + theta2);
%     l2z = 0;
% 
%     EFx = l1x + l2x;
%     EFy = l1y + l2y;
%     EFz = l1z + l2z;
%     EF = [EFx EFy EFz 1]';
% 
%     scatter(EF(1), EF(2),100,'filled','MarkerFaceColor','blue');
% 
%     %Segundo eslabón
%     line([joint2(1) EF(1)],[joint2(2) EF(2)],[0 0],'color','black','linewidth', 2);
% 
%      pause(0.05)
% end