Fs=100;
dt=1/Fs;
StartTime=-5;
StopTime=15;
t=StartTime:Ts:StopTime-dt;

%step Function
x1=(t>0)+(t>1)-2*(t>2);

%ramp Function
x2=(t-1).*(t>1);

%plot
figure;
plot(t,x2,'LineWidth',2);
grid on;
ylim([-3,3]);
xlabel('time');
ylabel('x(t)');