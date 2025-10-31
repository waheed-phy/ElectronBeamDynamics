% Femto calculation
V = 1:1:30;
I = 117.2*V;
plot(V,I,'-o','LineWidth',2)
grid()
xlabel('V(kV)','FontSize',20)
ylabel('I(mA)','FontSize',20)
title('Femto calibration','FontSize',20)