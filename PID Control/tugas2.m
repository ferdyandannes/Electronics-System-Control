s = tf('s');
P_motor = 0.02 /(0.005*s^2 + 0.12*s + 0.4004);
Kp = 44.971;
Ki = 1.4975;
Kd = 0.03336;
C = pid(Kp,Ki,Kd);
sys_cl = feedback(C*P_motor,1);
step(sys_cl, 0:0.01:40)
grid
title('PID Control with Large Ki and Large Kd')