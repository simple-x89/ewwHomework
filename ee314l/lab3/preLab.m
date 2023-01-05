%Keith Harris
%EE314L
%Lab3
%9.17.2022

%Sinusoidal Functions
%================================
t1= linspace(0,2*pi,25); %time range
y=sin(t1); %sinusoidal analog signal
figure;
%Continous plot using plot()
subplot (2,1,1); 
plot(t1,y, 'color',[.6 0 0]);
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title("continous");

%discrete plot using stem()
subplot (2,1,2); 
stem(t1,y);
xlabel('time');
ylabel('x(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title ("Discrete");
sgtitle('Sinusoidal Functions')

%Impulse Function
%================================
n1=input ("Enter Impulse Func Lower Limit:"); 	%Users input assigned to n1
n2=input ("Enter Impulse Func Upper Limit:"); 	%Users input assigned to n2
t2= n1:n2;%time range
Delta= t2==0;%impulse signal
figure;
%impulse plot using stem()
stem(t2,Delta, 'diamondr')
xlabel('time');
ylabel('z(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
%title ("Impulse");
sgtitle('Impulse Function')


%Unit Step Signal
%================================
n3=input ('Enter Step Func Lower Limit:'); 	%Users input assigned to n3
n4=input ('Enter Step Func Upper Limit:'); 	%Users input assigned to n4
t3=n3:n4;	%time range
Mu=[(t3)>=0];	%unit step signal
figure;
subplot (2,1,1);
stem(t3, Mu, 'r'); % Plot Mu as a function of t using the function stem
xlabel('time');
ylabel('u(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title('Unit Step Signal – Discrete');


n5=input ('Enter Unit Step Func Upper Limit:'); 	%Users input assigned to n
t4 = 0:n5;	%time range
Mu1 = t4>=0;	%unit step signal
subplot(2,1,2);
plot(t4,Mu1, 'b'); % Plot Mu as a function of t using the function plot 
xlabel('time');
ylabel('v(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title('Unit Step Signal – Continuous');
sgtitle('Unit Step Functions')

%Ramp Signal
%================================
n5=input ('Enter Ramp Func Lower Limit:'); 	%Users input assigned to n1
n6=input ('Enter Ramp Func Upper Limit:'); 	%Users input assigned to n2
t6 = n5: n6;	%time range
r = t6.*(t6>=1);	%Unit Ramp signal
figure;
subplot (2,1,1); %plot as a function of t
plot(t6,r,'r'); % Plot r as a function of t using the function plot
xlabel('time');
ylabel('r(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title('Continuous');
subplot (2,1,2); %plot as a function of t
stem(t6,r,'b');  % Plot r as a function of t using the function stem
xlabel('time');
ylabel('r(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title ('Discrete');
sgtitle('Unit Ramp Functions')

%Exponential Functions
%================================

t7=input ('Ener Exponential Func Lower Limit:'); 	%User6s input assigned to n1
t8=input ('Enter Exponential Func Upper Limit:'); 	%User7s input assigned to n2
tr=t7:t8;	% time range ttr between t1 and t2
a=input('Enter the value of a:');
y1=exp(a*tr);	% y is assigned e^(at) unit exponential function
figure;
subplot (2,1,1); %plot as a function of t
plot(tr, y1, 'r');
xlabel('time');
ylabel('y(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title('continuous');
subplot (2,1,2); %plot as a function of t
stem(tr, y1, 'b');
xlabel('time');
ylabel('y(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
title ('Discrete');
sgtitle('Unit Exponential Functions')













