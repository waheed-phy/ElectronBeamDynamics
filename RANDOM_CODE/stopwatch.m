start_t = tic;
elapsed_t = toc(start_t);

time = 10;

while elapsed_t < time
    elapsed_t = toc(start_t);
    disp(elapsed_t);
    pause(time);
end