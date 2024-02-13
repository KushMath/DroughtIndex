
function plotFGMdensity()

% Define the values of u and v over a grid
[u,v] = meshgrid(0:0.05:1);
% Define the value of delta_uv
theta = -0.03195;
%density
c = 1 + theta*(1-2.*u).*(1-2.*v);

figure();
hsurf = surf(u, v, c, 'edgecolor', 'black');
set(hsurf,'FaceColor',[0.76 0.83 0.92]);
ax = gca;
grid minor
ax.BoxStyle = 'full';
figsettings
xlabel('u','Interpreter','latex');
ylabel('v','Interpreter','latex');
zlabel('c(u,v)','Interpreter','latex');
grid off;

end