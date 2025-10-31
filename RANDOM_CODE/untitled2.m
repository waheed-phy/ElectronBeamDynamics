start_t = tic;
elapsed_t = toc(start_t);
time = 0.1;
fprintf('Time(s)  V(volts)\n');
for volts = 0:0.1:0.5
    elapsed_t = toc(start_t);
    pause(time);
    fprintf('%5.1f   %5.2f\n',elapsed_t,volts)
end