# V vs I for 101105
import matplotlib.pyplot as plt
import numpy as np
V = np.arange(0,3.2,0.1)
I = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.6,0.6,0.7,0.7,0.8,0.8,0.8,0.8,0.9,0.9,0.9,0.9,1,1,1,1.1,1.1,1.1,1.2,1.2,1.2,1.3,1.3,1.3,1.3];

plt.plot(V,I,'ro')
plt.plot(V,I,'k-')

plt.grid()
plt.xlabel('V(volts)')
plt.ylabel('Filament current(A)')
plt.title('LV plot for 101105')
plt.show()
