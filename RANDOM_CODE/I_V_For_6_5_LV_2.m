% LV = 6.5 volt.

% HV applied is DC 20kV Glassman supply.

V1 = 1:20;
I1 = [0.1,0.07,0.08,0.11,0.14,0.16,0.177,0.188,0.198,0.201,0.207,0.211,0.215,0.22,0.229,0.232,0.237,0.241,0.243,0.244];

% HV applied is DC 20kV
V2 = V1;
I2 = [0.57,0.84,0.57,0.9,1.1,1.2,1.45,1.47,1.51,1.52,1.62,1.57,1.51,1.59,1.50,1.48,1.62,1.65,1.75,1.84];

% HV applied is DC HV ScandiNova
V3 = [1.8,5,7,9.2,11.5,13.5,15.2,16.4,17.6,18.4,20.4,20.8,22];
I3 = [0.16,0.17,0.46,0.75,0.97,1.11,1.67,1.8,1.9,2.1,2.2,2.3,2.4];

plot(V1,I1,V2,I2,'k:d',V3,I3,'r:s','LineWidth',1.5)
legend('HV-DC Glassman','HV-DC Glassman','HV-Pulsed ScandiNova')
xlabel('V(kV)')
ylabel('I_{ext}(\muA)')
grid()
title('LV = 6.5 volts, Current Dettected at Multimeter ')