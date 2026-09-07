function vector4d = Rotacion(ang, eje, vectorIn)
    switch lower(eje)
        case 'x'
            MatRot = [1 0 0 0; 0 cos(ang) -sin(ang) 0; 0 sin(ang) cos(ang) 0; 0 0 0 1];
        case 'y'
            MatRot = [cos(ang) 0 sin(ang) 0; 0 1 0 0; -sin(ang) 0 cos(ang) 0; 0 0 0 1];
        case 'z'
            MatRot = [cos(ang) -sin(ang) 0 0; sin(ang) cos(ang) 0 0; 0 0 1 0; 0 0 0 1];
        otherwise
            error('El eje debe ser ''x'', ''y'' o ''z''.');
    end

    vector4d = MatRot * vectorIn;
end