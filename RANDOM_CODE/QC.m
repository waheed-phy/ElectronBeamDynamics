Pauli_x = [0 1;1 0];
Pauli_y = [0 -i;i 0];
Pauli_z = [1 0;0 -1];

N = sym('N');

H = N.*[1 1;1 -1];

a=sym('a');
b=sym('b');

Psi = [a 0;b 0];

Pauli_X_Gate = Pauli_x*Psi
Pauli_Y_Gate = Pauli_y*Psi
Pauli_Z_Gate = Pauli_z*Psi

Hadamard_Gate = H*Psi