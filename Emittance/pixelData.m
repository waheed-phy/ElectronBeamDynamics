function [FWHM_x,FWHM_y]=pixelData(file,name)
% this function reads a greyscale image and calculates its pixel data then
% calls the gaussfit function for gaussian fit.
%-------------------------------------------------------------------------%
%read file name
gimg = imread(file);
% names with specified folder for final images to be saved.
savename_x = 'images\plots\'+string(name)+"_x.png";
savename_y = 'images\plots\'+string(name)+"_y.png";
%-------------------------------------------------------------------------%
% height and width of the given image
[height,width] = size(gimg);
%-------------------------------------------------------------------------%
% Calculating pixel data in x-axis
for i=1:width
    pixel_value_x(i) = sum(gimg(:,i));
end
%-------------------------------------------------------------------------%
% calling gauss fit and getting fitting function and the corresponding
% FWHM.
[gaussian_x,FWHM_x] = gaussfit(pixel_value_x);
%Plotting data and gaussian fit.
plot(pixel_value_x);
hold on;
plot(gaussian_x,'k');
xlabel('width');
ylabel('Pixel value');
title('X-Pixel Data FWHM = '+string(FWHM_x));
grid();
legend_x = ["Data","Gaussian Fit"];
legend(legend_x);
saveas(gcf,savename_x);
hold off;
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% Calculating pixel data in y-axis
y = 1:height;
%pixel_value_y = zeros(1,height);
for i=1:height
    pixel_value_y(i) = sum(gimg(i,:));
end
%-------------------------------------------------------------------------%
% calling gauss fit and getting fitting function and the corresponding
% FWHM.
[gaussian_y,FWHM_y] = gaussfit(pixel_value_y);
plot(pixel_value_y);
hold on;
plot(gaussian_y,'k');
xlabel('height');
ylabel('Pixel value');
title('Y-Pixel Data FWHM = '+string(FWHM_y));
grid();
legend_y = ["Data","Gaussian Fit"];
legend(legend_y);
saveas(gcf,savename_y);
hold off;
end
%-------------------------------------------------------------------------%