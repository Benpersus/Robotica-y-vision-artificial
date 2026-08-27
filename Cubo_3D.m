cubo = [1 4 4 1 1 1 4 4 1 1;
        1 1 4 4 1 1 1 4 4 1;
        1 1 1 1 1 4 4 4 4 4;
        1 1 1 1 1 1 1 1 1 1];

%%EJES PRINCIPALES
    line([0 5],[0 0],[0 0],'color','red','linewidth', 3)
    line([0 0],[0 5],[0 0],'color','green','linewidth', 3)
    line([0 0],[0 0],[0 5],'color','blue','linewidth', 3)
    axis equal
    xlim([0 5]); ylim([0 5]);
    hold on

 line(cubo(1,:), cubo(2,:), cubo(3,:), 'color', 'black')
 line([cubo(1,2) cubo(1,7)],[cubo(2,2) cubo(2,7)],[cubo(3,2) cubo(3,7)],'color','black');
 line([cubo(1,3) cubo(1,8)],[cubo(2,3) cubo(2,8)],[cubo(3,3) cubo(3,8)],'color','black');
 line([cubo(1,4) cubo(1,9)],[cubo(2,4) cubo(2,9)],[cubo(3,4) cubo(3,9)],'color','black');

 view(3)
