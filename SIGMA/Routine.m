clc;
clear ;
addpath('C:\Program Files\MATLAB\libs');
%=========================================================================%
% reading data
dataset = readtable('data\ARun3.xlsx');
Bx = dataset.Solenoid_Bx;
By = dataset.Solenoid_By;
SigmaX = (dataset.Sigma_x).^2;
SigmaY = (dataset.Sigma_y).^2;

%plot(B,SigmaX,'k.');
[y,coefy]=createFit(By,SigmaY);
%plot(B,SigmaY,'r.');

[x,coefx]=createFit(Bx,SigmaX);
bx=min(Bx):0.1:max(Bx);
by=min(By):0.1:max(By);
figure;
plot(Bx,SigmaX,'s',bx,x(bx),'k')
plt = Plot();
plt.XLabel = 'Magnetic strength(Gauss)';
plt.YLabel = 'Beam size squared(\mu m^2)';

plt.LineStyle = {'--','-'}'
plt.Legend = {'Data','Polynomial fit'};
plt.XGrid = 'on';
plt.YGrid = 'on';
plt.LineWidth = [2,2];

figure;
plot(By,SigmaY,'s',by,y(by),'b')
plt = Plot();
plt.XLabel = 'Magnetic strength(Gauss)';
plt.YLabel = 'Beam size squared(\mu m^2)';

plt.LineStyle = {'--','-'}'
plt.Legend = {'Data','Polynomial fit'};
plt.XGrid = 'on';
plt.YGrid = 'on';
plt.LineWidth = [2,2];
