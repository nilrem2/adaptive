%% Nonlinearity
x = -50:0.01:50;

figure('Name','Nonlinearities')
subplot(2,1,1)
hold all
plot(x,x.^3,'r')
plot(x,exp(-10*(x+0.5).^2),'g')
plot(x,exp(-10*(x-0.5).^2),'b')
plot(x,sin(2*x),'m')
axis([-2 2 -2 2])
title('basis functions')
%
subplot(2,1,2)
hold all
plot(x,0.01*x.^3,'r:')
plot(x,-1*exp(-10*(x+0.5).^2),'g:')
plot(x,exp(-10*(x-0.5).^2),'b:')
plot(x,0.5*sin(2*x),'m:')
%
plot(x,0.01*x.^3 - 1*exp(-10*(x+0.5).^2) + exp(-10*(x-0.5).^2) + 0.5*sin(2*x));
%
axis([-2 2 -2 2])
title('linear combination')

%% states and error
figure('Name','output and error')
subplot(2,1,1)
hold all
plot(tout,x_m,':')
plot(tout,x_p)
plot(tout,r,'.-')
legend('Model','Plant','reference signal')
title('output')
%
subplot(2,1,2)
hold all
plot(tout,x_m-x_p)
title('error')


