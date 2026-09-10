function DibujaEjes(AxisLenght)

    line([0 (AxisLenght*1.2)],[0 0],[0 0],'color','red','linewidth', 3)
    line([0 0],[0 (AxisLenght*1.2)],[0 0],'color','green','linewidth', 3)
    axis equal
    hold on
end