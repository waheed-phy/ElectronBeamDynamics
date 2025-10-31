x = 0:0.1:5;
a = -26.13;
b = -7.232;
c =  1216;
y= a*((sin(x-pi))) + b*(((x-10).^2)) + c;
plot(x,y)
grid()
xlabel('Applied Potential(v)')
ylabel('Temperature on Cathode(C)')