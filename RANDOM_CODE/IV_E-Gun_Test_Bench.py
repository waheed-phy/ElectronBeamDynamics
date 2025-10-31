# V vs I for 101105 on the E-gun test becnch on which i am working for my thesis
import matplotlib.pyplot as plt 

V = [] 
I = [] 

f = open('IV_E-Gun_Test_Bench.txt','r') 
for row in f: 
	row = row.split(',') 
	V.append(row[0]) 
	I.append(row[1])
# Factory
import numpy as np
V = list(np.float_(V))
I = list(np.float_(I))
v = [3.30,4.80,6.30,7.60]
i = [1.36,1.67,1.83,1.97]

plt.plot(V,I,'ro',label='Experimental')
plt.plot(V,I,'k-')
plt.plot(v,i,'kd',label='Factory')
plt.plot(v,i,'k-')

plt.grid()
plt.xlabel('V(volts)')
plt.ylabel('Filament current(A)')
plt.title('LV plot for E-gun Test Bench')
plt.legend()
plt.show()
