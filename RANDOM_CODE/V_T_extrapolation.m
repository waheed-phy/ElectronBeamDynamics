V = [7.5];
del = [1.3,1.4];
i=2;
while V>1
   if mod(i,2)==0
       V(i) = V(i-1)-del(1);
   else
       V(i) = V(i-1)-del(2);
   end
   i = i+1;
end
V(i)=0
T = [1200,1100,1000,900,800,700,0];
plot(V,T)
