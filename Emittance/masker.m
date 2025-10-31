%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Cropping %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% reading data
sol = readtable('data\241113.xlsx');
% length of data coloumn.
n = length(sol.Time);
%-------------------------------------------------------------------------%
% Calling function masker to crop images one by one and then save them.
for i=1:n
    file_name = 'images\rgb\'+string(sol.Time(i))+".png";
    Imagemasker(file_name,sol.Time(i));
end
%-------------------------------------------------------------------------%
% Cropping function.
function Imagemasker(X,name)

img = imread(X);                % read image file
[rows, cols, ~] = size(img);    % Get the size of the image

% Create a circular mask
[cols_grid, rows_grid] = meshgrid(1:cols, 1:rows);  % Create a grid of coordinates

centerX = cols / 2;  % X coordinate of the center
centerY = rows / 2;  % Y coordinate of the center

radius = min(rows, cols) / 2;  % Radius of the circle

% Calculate the distance from the center for each pixel
distance = sqrt((rows_grid - centerY).^2 + (cols_grid - centerX).^2);

% Create a binary mask (1 inside the circle, 0 outside)
circularMask = distance <= radius;

% Apply the mask to the image
croppedImg = bsxfun(@times, img, cast(circularMask, 'like', img));
% Saveing final image.
savename = 'images\crp\'+string(name)+".png";
imwrite(croppedImg, savename);
end


