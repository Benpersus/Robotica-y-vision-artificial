function DibujaEjes_GUI(app, AxisLenght)

    Delta = [-AxisLenght AxisLenght];

    line(app.UIAxes, Delta, [0 0], [0 0], LineWidth=2, Color='r');
    line(app.UIAxes, [0 0], Delta, [0 0], LineWidth=2, Color='g');
    line(app.UIAxes, [0 0], [0 0], Delta, LineWidth=2, Color='b');

    hold(app.UIAxes, 'on')
    grid(app.UIAxes, 'on')
    view(app.UIAxes, 45, 30)
    
    axis(app.UIAxes, 'equal')
end