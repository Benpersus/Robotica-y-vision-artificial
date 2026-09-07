function vector4d = RotacionXYZ(angX, angY, angZ, vectorIn)
cx = cos(angX); sx = sin(angX);
cy = cos(angY); sy = sin(angY);
cz = cos(angZ); sz = sin(angZ);

MatRotX = [1 0 0 0; 0 cx -sx 0; 0 sx cx 0; 0 0 0 1];
MatRotY = [cy 0 sy 0; 0 1 0 0; -sy 0 cy 0; 0 0 0 1];
MatRotZ = [cz -sz 0 0; sz cz 0 0; 0 0 1 0; 0 0 0 1];

% Orden de aplicación: primero Z, luego Y, luego X (puedes cambiarlo)
MatRotTotal = MatRotX * MatRotY * MatRotZ;

vector4d = MatRotTotal * vectorIn;
end