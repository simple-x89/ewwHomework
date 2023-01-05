%Keith Harris
%EE314L
%Lab3
%9.18.2022

% Problem 1
%================================
n=(0:84);
fn=3.6*exp(-.5+((1i*pi)/4)*n);
real_fn=real(fn);
imag_fn=imag(fn);
figure;
plot(n,real_fn,'r', n,imag_fn, 'b')

legend('real', 'Imaginary')
xlabel('n');
ylabel('F(n)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
sgtitle ("Problem 1");
figure;
plot(real_fn, imag_fn, 'y') %kinda cool :)
% Problem 2
%================================
f=4;
t=(0:.001:1); % Without sampling the time signal at a higher rate 
              % there would not be enough data points to make a 
              % meaningful graph
s=0.5*sin(2*pi*f*t); 
figure;
plot(t, s, 'g')
xlabel('t');
ylabel('S(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right');
sgtitle ("Problem 2");


% Problem 3
%================================
t1 =  (-1:0.01:1)'; % sets up t variable array 1x201 going 
                    % -1 to 1 in .01 increments 
                    % single quote is NOT a typo!CTRANSPOSE is needed for
                    % this too work.

impulse =t1==0;     % Element by element between t5 and 0 retuning 0 or 1 
                    % to an array of 1x201

unitstep =t1>=0;    % grabs all values where t<0
ramp =t1.*unitstep; % ramp function created by multiplying the t1 vector 
                    % with the unistep vector dot operator is used
                    % for an element by element multiplication
                    
quad =t1.^2.*unitstep; % squares every element of the t1 vector
figure;                % creates new window for easy report making
plot(t1, [impulse unitstep ramp quad]) %plots all 4 'signals' 
                                       % with resepct to t

ylabel('h(t)', 'rotation', 0, 'VerticalAlignment','middle', ...
    'HorizontalAlignment','right'); % axis label formating 
sgtitle ("Problem 3"); % plot tile