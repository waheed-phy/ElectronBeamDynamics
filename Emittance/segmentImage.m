function segmentImage(realName,name)
% function reads the image file and then converts it into the greyscale.
savename = 'images\bw\'+string(name)+".png";
RGB = imread(realName);

% Threshold image with manual threshold
BW = rgb2gray(RGB)>250;
imwrite(BW, savename);  % writing image to specified folder.
end

