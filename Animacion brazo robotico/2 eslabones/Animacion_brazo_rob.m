close all
clear 
clf
%% EJES PRINCIPALES
line([0 2],[0 0],[0 0],'color','red','linewidth', 3)
line([0 0],[0 2],[0 0],'color','green','linewidth', 3)
axis equal
hold on

%% Articulaciones
%Primera articulación
joint1 = [0 0]'; %Scatter
scatter(joint1(1), joint1(2),100,'filled','MarkerFaceColor','blue');
l1 = input('Introduce la longitud del eslabon 1 [m]:');
theta1 = input('Introduce el ángulo de la primera articulación [rad]:');
l1x = l1*cos(theta1);
l1y = l1*sin(theta1);

%Segunda articulación
joint2 = [l1x l1y];
scatter(joint2(1), joint2(2),100,'filled','MarkerFaceColor','blue');

l2 = input('Introduce la longitud del eslabon 2 [m]:');
theta2 = input('Introduce el ángulo de la segunda articulación [rad]:');

l2x = l2*cos(theta1 + theta2);
l2y = l2*sin(theta1 + theta2);

EFx = l1x + l2x;
EFy = l1y + l2y;
EF = [EFx EFy]';

% Punto final
scatter(EF(1), EF(2),100,'filled','MarkerFaceColor','blue');

%%Eslabones
%Primer eslabón
line([joint1(1) joint2(1)],[joint1(2) joint2(2)],[0 0],'color','black','linewidth', 2);

%Segundo eslabón
line([joint2(1) EF(1)],[joint2(2) EF(2)],[0 0],'color','black','linewidth', 2);