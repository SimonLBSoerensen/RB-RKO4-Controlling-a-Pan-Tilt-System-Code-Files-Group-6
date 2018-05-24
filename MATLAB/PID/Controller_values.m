%% Parameters
J_tilt = 0.00857;
J_pan = 0.0285;
b = 0.000931;
K = 0.509;
R = 7.101;
L = 0.0034;
Ts = 0.01;
s = tf('s');
z = tf('z',Ts);
Delay = z^(-1);
%% Tilt transfer function
G_tilt = (K/(s*(J_tilt*s+b)*(L*s+R)+K^2));
G_tiltDNoDelay = c2d(G_tilt,Ts,'tustin');
G_tiltD = c2d(G_tilt,Ts,'tustin')*Delay;
%% Pan transfer function
G_pan = (K/(s*(J_pan*s+b)*(L*s+R)+K^2));
G_panDNoDelay = c2d(G_tilt,Ts,'tustin');
G_panD = c2d(G_pan,Ts,'tustin')*Delay;
%% Tilt discrete controller
C_tiltD = pidstd(360.32*(z^2 - 1.886*z + 0.8901)/(z-1));
Kp_tilt = 41.1;
Ti_tilt = 0.278;
Td_tilt = 0.0877;
%% Pan discrete controller
C_panD = pidstd((711.09*(z^2 - 1.943*z + 0.9443))/(z-1));
C_panD = ((711.09*(z^2 - 1.943*z + 0.9443))/(z-1));
Kp_pan = 40.5;
Ti_pan = 0.438;
Td_pan = 0.175;
%% Final systems
TiltFinal = feedback(C_tiltD*G_tiltD,Delay);
PanFinal = feedback(C_panD*G_panD,Delay);
%% Poles and rlocus
pole(G_tiltDNoDelay);
pole(G_panDNoDelay);
rlocus(TiltFinal);
rlocus(PanFinal);