function y = PLOT_PR(m)
% File: PLOT_PR.M
% CALL: plot_pr(m)
% This file informs the user that "m" plots will be generated
% and that the SPACEBAR key must be depressed to advance to the
% next window.

fprintf(['\n\nThere are ',int2str(m),' windows to be viewed.\n']);
fprintf('You must press the SPACEBAR key to advance to the next window.\n');
pause;



