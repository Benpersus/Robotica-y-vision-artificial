close all
clear
clf

DibujaEjes(3)

[ W, L, H] = LeerDim();
fprintf("[DEBUG] Ancho: %f | Largo: %f | Alto: %f \n", W, L, H);

PointMatrix = GetPointMatrix(L, W, H, 0, 0, 0);

DibujaCaja(PointMatrix,'yellow');

%Theta = input("Indica el angulo de rotacion [rad]: ");
%NewPoints = MoverCaja(Theta, PointMatrix);

%DibujaCaja(NewPoints,'blue');

opcion = input('Indica el tipo de movimiento: "r" para rotacion y "t" para traslacion: ','s');

% Eliges entre rotación y traslación y se anima
if opcion == 'r'
    Theta = input("Indica el angulo de rotacion [rad]: ");
    ang = linspace(0, Theta, 50);
    for i = 1:1:50
        clf
        DibujaEjes(3)
        NewPoints = MoverCaja(ang(i), PointMatrix);
        DibujaCaja(NewPoints,'blue');
        pause(0.1)
    end 
elseif opcion == 't'
    Delta_x = input("Indica el movimiento en x [m]: ");
    Delta_y = input("Indica el movimiento en y [m]: ");
    Delta_z = input("Indica el movimiento en z [m]: ");
   dx = linspace(0, Delta_x, 50);
   dy = linspace(0, Delta_y, 50);
   dz = linspace(0, Delta_z, 50);
    for i = 1:1:max([Delta_x, Delta_y, Delta_z])
        clf
        DibujaEjes(3)
        NewPoints = Traslacion(dx(i),dy(i),dz(i),PointMatrix);
        DibujaCaja(NewPoints,'blue');
        pause(0.1)
    end
end

%________ TAREA _________ %

%   Parte 1
%   Modificar New Points para que caja 2(rotacion)
%   sea diferente color a caja 1(original) > modificar DibujarCaja()

%   Part 2
%   Agregar espacio para elegir tipo de mov.
%   (traslacion x, y o z, o rotacion en z) y generar animacion