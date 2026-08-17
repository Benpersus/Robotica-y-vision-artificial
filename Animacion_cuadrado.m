cuadrado = [1 4 4 1 1;
             1 1 4 4 1;
             0 0 0 0 0;
             1 1 1 1 1];
dy = 4;
clf
%Cuadrado
for i = 0:0.1:dy
    clf
    %Se dibujan los ejes
    line([0 10],[0 0],[0 0],'color','red','linewidth', 2)
    line([0 0],[0 10],[0 0],'color','green','linewidth', 2)
    hold on

    %Cuadrado original
    line(cuadrado(1,:), cuadrado(2,:), 'color', 'black')

    %Traslación cuadrado
    cuadrado2 = Traslacion(0, i, 0, cuadrado1); 
    line(cuadrado2(1,:), cuadrado2(2,:), 'color', 'blue')

    axis equal;

    pause(0.1)
end