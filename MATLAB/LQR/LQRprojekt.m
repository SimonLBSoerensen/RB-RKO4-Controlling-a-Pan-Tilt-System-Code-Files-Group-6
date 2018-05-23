%% Clear Stuff.
clear;
clc;

s = tf('s');
z = tf('z');

%% Parameters
b = 0.000931;
K = 0.509;
R = 7.101;
L = 0.0034;
J_p = 0.0285;
J_t = 0.00857;
Ts = 1/100;
SimulationTime = 10;

%% State Space of Plant 
A = [0 1 0; 0 -b/J_t K/J_t; 0 -K/L -R/L];
B = [0 ; 0 ; 1/L];
C = [1 0 0];
D = 0;


%% Open loop Poles 
sys_ss=ss(A,B,C,D);
poles = eig(A);  %systemet er marginalt stabilt da der ligger en pol i 0

%% Controllability
co=ctrb(sys_ss);
controllability = rank(co); % system is controlable since controllability matrix has full rank

% Creating LQR Controller
R=1/14;%
Q=[1 0 0 ; 0 0 0 ; 0 0 0];
K=lqr(A,B,Q,R);

%Closed loop Poles
Ac = [(A-B*K)];
Bc = [B];
Cc = [C];
Dc = [D];
polesc = eig(Ac)

%plot of step respons of closed loop systemet.
sys_cl=ss(Ac,Bc,Cc,Dc);
t=0:0.01:5;
r =1*ones(size(t));
[y,t,x]=lsim(sys_cl,r,t);
plot(t,y(:,1));
xlabel('time');
ylabel('Angle');
title('Step Response with LQR Control');
%stepinfo(sys_cl);

%Calculating precompensater Nbar and plot
Nbar=rscale(sys_ss,K);
sys_cl = ss(Ac,Bc*Nbar,Cc,Dc);
[y,t,x]=lsim(sys_cl,r,t);
plot(t,y(:,1));
xlabel('time');
ylabel('Angle');
title('Step Response with LQR Control');


%%observer
ob=obsv(sys_ss);
oberservability =rank(ob);

% Creating observer. 
P=[-30 -31 -32];  %observer poles should be 4-10 times faster than control poles. 
L=place(A',C',P)';
Ace = [(A-B*K) (B*K);
    zeros(size(A)) (A-L*C)];
Bce = [B*Nbar; zeros(size(B))];
Cce = [Cc zeros(size(Cc))];
Dce = [0];

%plot of observer driven LQR control system
sys_est_cl=ss(Ace,Bce,Cce,Dce);
[y,t,x]=lsim(sys_est_cl,r,t);
plot(t,y(:,1));
xlabel('time');
ylabel('Angle');
title('Step Response with LQR Control with SSE compensated and observer');
stepinfo(sys_est_cl)

startVinkel = pi;
startVinkelHastighed = 0;
startStroem = 0;
StartVal = [startVinkel ; startVinkelHastighed ; startStroem];

