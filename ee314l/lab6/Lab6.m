%Keith Harris
%EE314L
%Lab3
%10.31.2022

syms x f t s y K L M N o	% Define symbols

%-----------------Activity-1----------------------

% The Laplace Transform of a function
x = t;
laplace(x);	% Calculate the Laplace Transform of x(t)

% The Laplace Transform of a function

f = -1.25 + 3.5*t*exp(-2*t) + 1.25*exp(-2*t);
F = laplace(f, t, s); 
g0 = simplify(F);	
pretty(g0)	

%-----------------Exercise-1----------------------

y = 5*exp(-2*t);
Y = laplace(y, t, s); 
g1 = simplify(Y);
pretty(g1)	

%-----------------Activity-2----------------------

K = (s-5)/(s*(s + 2)^2);
k = ilaplace(K, s, t); 	
g2 = simplify(k);	
pretty(g2)	

L = 10*(s+2)/(s*(s^2 + 4*s + 5));
l = ilaplace(L, s, t); 	
G3 = simplify(l);	
pretty(G3)	

%-----------------Exercise-2----------------------

%1
M = 24/(s*(s+8));
m = ilaplace(M, s, t);
G4 = simplify(m);	
pretty(G4)

%2
N = (1/s) - (2/(s + 4)) + (1/(s+5));
n = ilaplace(N, s, t);
G5 = simplify(n);	
pretty(G5)

%3
o = (1/t);
O = laplace(o, t, s);
G6 = simplify(O);	
pretty(G6)

% %4