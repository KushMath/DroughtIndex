
function plotFGMdistribution()
% Define the values of u and v over a grid
[u,v] = meshgrid(0:0.05:1);
% Define the value of delta_uv
theta = -0.03195;
%copula distribution
C=u.*v.*( 1+theta*(1-u).*(1-v));

figure();
hsurf = surf(u, v, C, 'edgecolor', 'black');
set(hsurf,'FaceColor',[0.76 0.83 0.92]);
ax = gca;
ax.BoxStyle = 'full';
figsettings
xlabel('u','Interpreter','latex');
ylabel('v','Interpreter','latex');
zlabel('C(u,v)','Interpreter','latex');
grid off;
end
