    function DibujaBrazo_GUI(app, P0, P1, P2, EF)
        scatter3(app.UIAxes, P0(1), P0(2), P0(3), 100, 'filled', 'MarkerFaceColor', 'red');
        scatter3(app.UIAxes, P1(1), P1(2), P1(3), 100, 'filled', 'MarkerFaceColor', 'red');
        scatter3(app.UIAxes, P2(1), P2(2), P2(3), 100, 'filled', 'MarkerFaceColor', 'red');
        scatter3(app.UIAxes, EF(1), EF(2), EF(3), 100, 'filled', 'MarkerFaceColor', 'red');

        line(app.UIAxes, [P0(1) P1(1)], [P0(2) P1(2)], [P0(3) P1(3)], 'color', 'black', 'linewidth', 2);
        line(app.UIAxes, [P1(1) P2(1)], [P1(2) P2(2)], [P1(3) P2(3)], 'color', 'black', 'linewidth', 2);
        line(app.UIAxes, [P2(1) EF(1)], [P2(2) EF(2)], [P2(3) EF(3)], 'color', 'black', 'linewidth', 2);
    end