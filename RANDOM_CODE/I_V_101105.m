% V vs I for 101105

V = 0:0.1:3.1;
I = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.6,0.6,0.7,0.7,0.8,0.8,0.8,0.8,0.9,0.9,0.9,0.9,1,1,1,1.1,1.1,1.1,1.2,1.2,1.2,1.3,1.3,1.3,1.3];

plot(V,I,'k','LineWidth',2)
hold on
plot(V,I,'ro')
hold off
grid()
xlabel('V(volts)')
ylabel('Filament current(A)')
title('LV plot for 101105')