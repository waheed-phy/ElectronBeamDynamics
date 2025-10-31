%%% Experiment 1: LV = 6.5 volts AC, DC-HV of 5kV
V1 = [0,1,2,3,4,5];
I1 = [0,0.13,0.10,0.138,0.184,0.218];
plot(V1,I1,'k')
hold on
%%% Experiment 2: Add 100 ohm to HV-DC of 5kV. LV = 6.5 volts AC.
V2 = 0:0.5:5;
I2 = [0,0.11,0.125,0.09,0.097,0.109,0.136,0.162,0.183,0.2,0.216];
plot(V2,I2,'bo-')

%%% Experiment 5: Apply DC-AC upto 20 kV. LV = 6.5 volts AC.
I5 = [0,0.1,0.07,0.08,0.11,0.14,0.16,0.177,0.188,0.198,0.201,0.207,0.211,0.215,0.22,0.229,0.232,0.237,0.241,0.243,0.24];
V5 = 0:20;
plot(V5,I5)
hold off