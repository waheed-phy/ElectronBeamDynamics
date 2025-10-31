V_ext = [396 300 304 312 320 348 372 396 420 444 466 480 504 520 536 544 552 560 560 564];
I_ext = (V_ext.*117)./1000;

time = 30:30:(30*length(V_ext));

plot(time,I_ext,'-o','LineWidth',2)
xlabel('time(seconds)')
ylabel('I_ext(mA)')
grid()