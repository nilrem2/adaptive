
% initial condition
x_p_0 = 0;  % plant IC
x_m_0 = 0;  % model IC

% plant parameter
a = 1;
b = 3;

% model parameter
a_m = -4;
b_m = 4;

% nonlinearity
theta_f = [0.01 -1 1 0.5];