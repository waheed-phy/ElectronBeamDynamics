clc;
clear all;
addpath('C:\Program Files\MATLAB\libs');
%=========================================================================%
% reading data
dataset = readtable('data\ARun4.xlsx');
Bx = dataset.Solenoid_Bx;
By = dataset.Solenoid_By;
SigmaX = (dataset.Sigma_x).^2;
SigmaY = (dataset.Sigma_y).^2;

%plot(B,SigmaX,'k.');
[y,coefy]=createFit(By,SigmaY);
%plot(B,SigmaY,'r.');

[x,coefx]=createFit(Bx,SigmaX);
b=min(Bx):0.1:max(Bx);
figure;
plot(Bx,SigmaX,'s',b,x(b),'k-')
plt = Plot();
plt.XLabel = 'Magnetic strength(Gauss)';
plt.YLabel = 'Beam size squared(\mu m^2)';
plt.Title = '\sigma _x';
plt.LineStyle = {'--','-'}'
plt.Legend = {'Data','Polynomial fit'};
plt.XGrid = 'on';
plt.YGrid = 'on';
plt.LineWidth = [2,2];

figure;
b=min(By):0.1:max(By);
plot(By,SigmaY,'s',b,y(b),'b-')
plt = Plot();
plt.XLabel = 'Magnetic strength(Gauss)';
plt.YLabel = 'Beam size squared(\mu m^2)';
plt.Title = '\sigma _y';
plt.LineStyle = {'--','-'}'
plt.Legend = {'Data','Polynomial fit'};
plt.XGrid = 'on';
plt.YGrid = 'on';
plt.LineWidth = [2,2];
