% (X^2 + (9/4)*y^2+z^2-1)^3 - x^2*z^3-(9/80)*y^2*z^3 =0
%range x,y,z = -1~1

clc;
const=0;
x=-3:0.05:3;y=-3:0.05:3;z=-3:0.05:3;
[x,y,z]=meshgrid(x,y,z);
f=(x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (9/80)*y.^2.*z.^3-const;
p=patch(isosurface(x,y,z,f,0));
set(p, 'FaceColor', 'red', 'EdgeColor', 'none');
daspect([1 1 1]);
view(3); 
camlight;


