clear all
close all
theta_1 = [];
piston_displacement = [];

r = 106.8;
l = 410.6;
e = 45;

for k = 1:12
    theta_1(k) = (k-1) * 30;
end

for k = 1:12
    piston_displacement(k) = displacement(r,l,e,theta_1(k),1);
end

piston_displacement

function s = displacement(l_ab,l_bc,e,theta_1,M)
    s = (l_ab * cosd(theta_1)) + M*(l_bc^2 - e^2 - (l_ab^2 * (sind(theta_1))^2) + (2 * l_ab * e * sind(theta_1)))^(1/2); 
end
