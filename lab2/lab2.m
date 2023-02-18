clear all;
close all;

k = 2;
T_stala = 6;

omega = 1/16;


H = tf([k], [T_stala, 1]);
figure(1)

nyquist(H)
hold on;
% omega = 2
T = 2*pi/2;
delta_t = -0.78;
fi = delta_t * 2*pi/T;
x1 = 0.18 * cos(fi);
y1 = 0.18 * sin(fi);
plot(x1, y1, '*r')
% omega = 10
T = 2*pi/10;
delta_t = -0.16;
fi = delta_t * 2*pi/T;
x2 = 0.04 * cos(fi);
y2 = 0.04 * sin(fi);
plot(x2, y2, '*r')
% omega = 1/3
T = 2*pi/(1/3);
delta_t = -2.88;
fi = delta_t * 2*pi/T;
x3 = 1.11 * cos(fi);
y3 = 1.11 * sin(fi);
plot(x3, y3, '*r')
% omega = 1/2
T = 2*pi/(1/2);
delta_t = -2.46;
fi = delta_t * 2*pi/T;
x4 = 0.66 * cos(fi);
y4 = 0.66 * sin(fi);
plot(x4, y4, '*r')
% omega = 1/4
T = 2*pi/(1/4);
delta_t = -3.58;
fi = delta_t * 2*pi/T;
x5 = 1.28 * cos(fi);
y5 = 1.28 * sin(fi);
plot(x5, y5, '*r')
% omega = 3
T = 2*pi/(3);
delta_t = -0.52;
fi = delta_t * 2*pi/T;
x6 = 0.12 * cos(fi);
y6 = 0.12 * sin(fi);
plot(x6, y6, '*r')
% omega = 1/8
T = 2*pi/(1/8);
delta_t = -4.84;
fi = delta_t * 2*pi/T;
x7 = 1.65 * cos(fi);
y7 = 1.65 * sin(fi);
plot(x7, y7, '*r')
% omega = 1/10
T = 2*pi/(1/10);
delta_t = -4.94;
fi = delta_t * 2*pi/T;
x8 = 1.74 * cos(fi);
y8 = 1.74 * sin(fi);
plot(x8, y8, '*r')
%omega = 1/13
T = 2*pi/(1/13);
delta_t = -5.12;
fi = delta_t * 2*pi/T;
x9 = 1.83 * cos(fi);
y9 = 1.83 * sin(fi);
plot(x9, y9, '*r')
%omega = 1/16
T = 2*pi/(1/16);
delta_t = -5.59;
fi = delta_t * 2*pi/T;
x10 = 1.86 * cos(fi);
y10 = 1.86 * sin(fi);
plot(x10, y10, '*r')










sim('lab2_symulacja.slx')

figure(2)
hold on;
plot(ans.tout, ans.simout, 'r')
plot(ans.tout, ans.simout1, 'b')
xlabel('t')
ylabel('sin')
legend('Asin(wt + fi)', 'sinwt')