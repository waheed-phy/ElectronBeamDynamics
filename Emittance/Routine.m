%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Routines %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% reading data
sol = readtable('data\241113.xlsx');
% length of data coloumn.
n = length(sol.Time);
%-------------------------------------------------------------------------%
% converting rgb to grey scale usign function segmentImage
for i=1:n
    file_name = 'images\crp\'+string(sol.Time(i))+".png";
    segmentImage(file_name,sol.Time(i));
end
%-------------------------------------------------------------------------%
% Calculating pixel data, full width half maximum after fitting gaussian
% and then saving the images.
for i=1:n
    file_name = 'images\bw\'+string(sol.Time(i))+".png";
    [FWHM_x(i),FWHM_y(i)]=pixelData(file_name,sol.Time(i));
end

%-------------------------------------------------------------------------%
% Saving FWHM into a excel file . 
Name = {'FWHM_x','FWHM_y'};     % name of coloumns.
T = [FWHM_x',FWHM_y'];          % values of variables.
Sheet = 1;                      % sheet no on excel file.
xlrange='A2';                   % range for where to store data on sheet 1.
xlswrite("FWHM.xlsx",T,Sheet,xlrange);
xlrange='A1';                   % range for where to store variable names on sheet 1.
xlswrite("FWHM.xlsx",Name,Sheet,xlrange);