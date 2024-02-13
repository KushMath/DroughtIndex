clc;
close all;
clear;

%% Load data
load index.mat;
%% 
year=(Index(:, 7));
MSDI = (Index(:, 10));
MSDI=table2array(MSDI);
SPI=(Index(:, 28));
SPI=table2array(SPI);

%% 
figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
xlabel('Year');
ylabel('MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
hold off;
%xticks([14:48:493]);
%xticklabels({'1982','1986','1990','1994','1998','2002','2006','2010','2014','2018'});
set(gca, ...
  'Box'         , 'on'     , ...
   'FontSize'   ,14 , ...
  'TickDir'     , 'out'     , ...
  'FontName'   , 'Times New Roman',...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'XColor'      , [.1 .1 .1], ...
  'YColor'      , [.1 .1 .1], ...
    'LineWidth'   , 0.5         );
legend('Location', 'NorthEast');  % Add a legend to the plot
%% 

%% 
%%%%%%%%%%%%%%%%%%%% 3 months %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 
year=(Index(:, 12));
MSDI = (Index(:, 13));
SPI=(Index(:, 29));
MSDI=table2array(MSDI);
SPI=table2array(SPI);
%% 

figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
legend('Location', 'NorthEast');  % Add a legend to the plot
hold off;
hold on;
% Add horizontal line at -3
% line([0, length(MSDI)+1], [-2.5, -2.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
% hold off;
% line([0, length(MSDI)+1], [-1.5, -1.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
% hold off;
line([0, length(MSDI)+1], [-2, -2], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
hold off;
line([0, length(MSDI)+1], [-1.5, -1.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold off;
line([0, length(MSDI)+1], [-1, -1], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold off;
% line([0, length(MSDI)+1], [-1.3, -1.3], 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1.5);
hold off;
xlabel('3 Months Average');
ylabel('MSDI');
set(gca, ...
  'Box'         , 'on'     , ...
   'FontSize'   ,12 , ...
  'TickDir'     , 'out'     , ...
  'FontName'   , 'Times New Roman',...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'XColor'      , [.1 .1 .1], ...
  'YColor'      , [.1 .1 .1], ...
    'LineWidth'   , 0.5         );
% Add horizontal line at -3

%% 

%% 
%%%%%%%%%%%%%%%%%%%% 6 months %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
MSDI = (Index(:, 16));
SPI=(Index(:, 30));
MSDI=table2array(MSDI);
SPI=table2array(SPI);
%% 

figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
legend('Location', 'NorthEast');  % Add a legend to the plot
hold off;
hold on;
% Add horizontal line at -3
line([0, length(MSDI)+1], [-2, -2], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
hold on;
line([0, length(MSDI)+1], [-1.5, -1.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold on;
line([0, length(MSDI)+1], [-1, -1], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold off;
% line([0, length(MSDI)+1], [-1.2, -1.2], 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1.5);
% hold off;
xlabel('6 Months Average');
ylabel('MSDI');
set(gca, ...
  'Box'         , 'on'     , ...
   'FontSize'   ,12 , ...
  'TickDir'     , 'out'     , ...
  'FontName'   , 'Times New Roman',...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'XColor'      , [.1 .1 .1], ...
  'YColor'      , [.1 .1 .1], ...
    'LineWidth'   , 0.5         );
% Add horizontal line at -3

%% 

%%%%%%%%%%%%%%%%%%%% 9 months %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% 
MSDI = Index(:,19 );
SPI=Index(:, 31);
MSDI=table2array(MSDI);
SPI=table2array(SPI);
%% 

figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
legend('Location', 'NorthEast');  % Add a legend to the plot
hold off;
hold on;
%Add horizontal line at -3
line([0, length(MSDI)+1], [-2, -2], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
hold on;
line([0, length(MSDI)+1], [-1.5, -1.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold on;
line([0, length(MSDI)+1], [-1, -1], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold off;
% line([0, length(MSDI)+1], [-0.7, -0.7], 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1.5);
xlabel('9 Months Average');
ylabel('MSDI');
set(gca, ...
  'Box'         , 'on'     , ...
   'FontSize'   ,12 , ...
  'TickDir'     , 'out'     , ...
  'FontName'   , 'Times New Roman',...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'XColor'      , [.1 .1 .1], ...
  'YColor'      , [.1 .1 .1], ...
    'LineWidth'   , 0.5         );
% Add horizontal line at -3


%% 

%%%%%%%%%%%%%%%%%%%% 12 months %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 

%% 
MSDI = (Index(:, 22));
SPI=(Index(:, 32));
MSDI=table2array(MSDI);
SPI=table2array(SPI);
%% 

figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
legend('Location', 'NorthEast');  % Add a legend to the plot
hold off;
hold on;
%Add horizontal line at -3
line([0, length(MSDI)+1], [-2, -2], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
hold on;
line([0, length(MSDI)+1], [-1.5, -1.5], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);
hold on;
line([0, length(MSDI)+1], [-1, -1], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 1.4);

xlabel('12 Months Average');
ylabel('MSDI');
hold off;
set(gca, ...
  'Box'         , 'on'     , ...
   'FontSize'   ,12 , ...
  'TickDir'     , 'out'     , ...
  'FontName'   , 'Times New Roman',...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
    'LineWidth'   , 0.5         );
% Add horizontal line at -3
%% 
figure;
bar(MSDI,'FaceColor','black','DisplayName', 'MSDI');
hold on;
bar(SPI,'FaceColor','blue','DisplayName', 'SPI');
legend('Location', 'NorthEast');  % Add a legend to the plot
hold off;
hold on;
%Add horizontal line at -3
line([0, length(MSDI)+1], [-0.3, -0.3], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
hold off;