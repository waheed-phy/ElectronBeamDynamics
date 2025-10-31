% V vs I for 101105 on the E-gun test becnch on which i am working for my thesis

V_Factory =[3.30,4.80,6.30,7.60];
I_Factory = [1.36,1.67,1.83,1.97];

Data = load('IV_E-Gun_Test_Bench.txt')

plot(V_Factory,I_Factory,'kd-')
hold on
plot(Data(:,1),Data(:,2),'k-')
plot(Data(:,1),Data(:,2),'ro')
hold off

grid()

xlabel('V(volts)')
ylabel('Filament current(A)')
title('LV plot for 101105 E-Gun Test Bench')

x = 0:0.2:8;
xticks(x)

y = 0:0.1:2;
yticks(y)