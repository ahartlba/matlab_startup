function [] = startup()
% Set up Plots
get(groot,'Factory');
set(groot,'DefaultLineLineWidth', 1.2);
set(groot,'defaultfigurecolor',[1 1 1]);
set(groot,'defaultAxesFontSize',11);
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% Interpreter
set(groot, 'defaultTextInterpreter', 'latex');
set(groot, 'defaultLegendInterpreter', 'latex');
set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
set(groot, 'defaultColorbarTickLabelInterpreter', 'latex');
set(groot, 'defaultConstantlineInterpreter', 'latex');
set(groot, 'defaultGraphplotInterpreter', 'latex');
set(groot, 'defaultPolaraxesTickLabelInterpreter', 'latex');
set(groot, 'defaultTextarrowshapeInterpreter', 'latex');
set(groot, 'defaultTextboxshapeInterpreter', 'latex');

% Grid
set(groot, 'defaultAxesXGrid', 'on');
set(groot, 'defaultAxesYGrid', 'on');
set(groot, 'defaultAxesZGrid', 'on');

% set default number-format
format shortEng;

% close all editors
closeNoPrompt(matlab.desktop.editor.getAll);

% allow git to use open MATLAB sessions for diffs and merges
comparisons.ExternalSCMLink.setup();

% set root folders for generated files
Simulink.fileGenControl('set', ...
   'CacheFolder','.\cache', ...
   'CodeGenFolder','.\codegen', ...
   'keepPreviousPath',true, ...
   'createDir',true);

disp("Startup Done!")
end
