import numpy as np
import matplotlib.pyplot as plt

x=np.loadtxt('Ramp_up.txt')
#time = x[:,0]
#time = np.array(x[:,0], dtype='timedelta64[m]')
time = np.arange('09:45:00', '13:15:00', dtype='timedelta64[15m]')

current = x[:,1]
temperature = x[:,4]

plt.plot(time,current,'k',label='Current')
plt.legend(loc='upper left')
plt.xlabel('Time')
plt.ylabel('Current')
plt.twinx()
plt.plot(time,temperature,'ro',label='Baking Temperature')
plt.ylabel('Temperature(C)')
plt.legend(loc='upper right')
plt.grid()
plt.show()
