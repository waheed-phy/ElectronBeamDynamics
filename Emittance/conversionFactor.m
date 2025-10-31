%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Routines %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
% reading data
name = 'data\241113.xlsx';
sol = readtable(name);
% length of data coloumn.
n = length(sol.Time);
%-------------------------------------------------------------------------%
% converting rgb to grey scale usign function segmentImage
for i=1:n
    file_name = 'images\crp\'+string(sol.Time(i))+".png";
    segmentImage(file_name,sol.Time(i));
end
for i=1:n
    file_name = 'images\grey\'+string(sol.Time(i))+".png";
    [width_x(i),height_y(i)]=pixelData(file_name);
end

%-------------------------------------------------------------------------%
% Saving FWHM into a excel file . 
Name = {'Width_x','Height_y'};     % name of coloumns.
T = [width_x',height_y'];          % values of variables.
Sheet = 1;                      % sheet no on excel file.
xlrange='A2';                   % range for where to store data on sheet 1.
xlswrite("conversion.xlsx",T,Sheet,xlrange);
xlrange='A1';                   % range for where to store variable names on sheet 1.
xlswrite("conversion.xlsx",Name,Sheet,xlrange);

function segmentImage(realName,name)
% function reads the image file and then converts it into the greyscale.
savename = 'images\grey\'+string(name)+".png";
RGB = imread(realName);

% Threshold image with manual threshold
BW = rgb2gray(RGB);
imwrite(BW, savename);  % writing image to specified folder.
end


function [width_x,height_y]=pixelData(file)
% this function reads a greyscale image and calculates its pixel data then
% calls the gaussfit function for gaussian fit.

%-------------------------------------------------------------------------%
%read file name
gimg = imread(file);

%-------------------------------------------------------------------------%
% height and width of the given image
[height,width] = size(gimg);

%-------------------------------------------------------------------------%
% Calculating pixel data in x-axis
for i=1:width
    pixel_value_x(i) = sum(gimg(:,i));
end

for i=1:height
    pixel_value_y(i) = sum(gimg(i,:));
end

for i=1:width
    if pixel_value_x(i)>0
        indexx1=i;
        break;
    end
end
for j=width:-1:i
    if pixel_value_x(j)>0
        indexx2=j;
        break;
    end
end
width_x=indexx2-indexx1;



for i=1:height
    if pixel_value_y(i)>0
        indexy1=i;
        break;
    end
end
for j=height:-1:i
    if pixel_value_y(j)>0
        indexy2=j;
        break;
    end
end
height_y=indexy2-indexy1;
end