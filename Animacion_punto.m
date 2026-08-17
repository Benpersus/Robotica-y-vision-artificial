punto1 = [2,2,0,1]';
dx = 3;

for i = 1:0.1:dx
    clf
    line([0 10],[0 0],[0 0],'color','red','linewidth', 2)
    line([0 0],[0 10],[0 0],'color','green','linewidth', 2)
    hold on
    % Plotting p1
    scatter(punto1(1), punto1(2),'filled','red');
    hold on

    punto2 = Traslacion(i, 0, 0, punto1);
    scatter(punto2(1), punto2(2),'filled');

    pause(0.1)
end