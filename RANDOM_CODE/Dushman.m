work_f = 4.6;
Ao = 1.2e6;
T = 0:10;
J = Ao .* (T.^2) .*exp(-work_f./T);
plot(T,J)
hold on
x = log(Ao)-(work_f./T);
y = log(J./(Ao .* (T.^2)));
plot(x,y,'r')
hold off