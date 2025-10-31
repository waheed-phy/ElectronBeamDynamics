function [m ,c]=IB_Solenoid()
data = readtable('data\IB_Solenoid.xlsx');
[result,gof]=createFit(data.I_A,data.B_Gauss);
syms 'I';
m = result.p1; %slope
c = result.p2; %y-intercept

