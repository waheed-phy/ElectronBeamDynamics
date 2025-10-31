function [fitresult, FWHM] = gaussfit(y)
% prepares x and y data for fitting.
[xData, yData] = prepareCurveData( [], y );

% Set up fittype and options.
ft = fittype( 'gauss1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf 0];
opts.Normalize = 'on';
opts.StartPoint = [1 1 1];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
%--------- Call FWHM function --------------------%
j = 0:0.01:length(y);
dat = fitresult(j);
FWHM = fwhm(dat)/100;
end
%======================================================================%


