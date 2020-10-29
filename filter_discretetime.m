clear all
close all
clc

s=tf('s');
Ts=0.001;
ct_filter=10^4*pi^2/( s^2+100*pi*s+(100*pi)^2 );
dt_filter=c2d(ct_filter,Ts,'zoh')
[num,den]=tfdata(dt_filter,'v');
b0=num(1);  b1=num(2); b2=num(3);
a1=den(2);  a2=den(3);

figure (1)
bode(dt_filter)

sim('Filter_design')