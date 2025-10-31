% not being used
function [gaussian,FWHM] = GaussianFit(x,pixel_value)

gaussianfunc = @(p,x) p(1)*exp(-((x-p(2))/p(3)).^2);

% Fitting Gaussian curve
p0 = [1,1,50];    % guess coefficients
for ite=1:50
    p = lsqcurvefit(gaussianfunc,p0,x,pixel_value);
    p0 = p;
end
%gaussian = gaussianfunc(p0,x);
%var = 0:0.1:max(x);
gaussian = gaussianfunc(p0,x);

FWHM = fwhm(gaussian); 
end
