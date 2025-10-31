H = [1 1;1 -1];
up = [1 ; 0];
down = [0 ; 1];

C_up = transpose(up);
C_down = transpose(down);

M_H = [C_up*H*up C_up*H*down ; C_down*H*up C_down*H*down]