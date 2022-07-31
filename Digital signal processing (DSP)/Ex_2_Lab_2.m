% 2. Μορφή καταρράκτη
% Δίνεται η εξίσωση διαφορών ενός IIR φίλτρου:
%   12y(n) + 4y(n − 1) + 2y(n − 2) − y(n − 3) − 2y(n − 4) 
%   = x(n) − 2x(n − 1) + 10x(n − 2) − 20x(n − 3) + 30x(n − 4)
% Να σχεδιάσετε την μορφή καταρράκτη.

n = -1:10;
Y = [12 4 2 -1 -2];   % left hand side of difference equation
X = [1 -2 10 -20 30];  % right hand side of difference equation
xA=2*n;
zi = filtic(X,Y)
yA = filter(X,Y,2*n,zi)
subplot(2,1,1)
plot(n,yA)
xlabel('--------n----------->')
ylabel('-------Values------->')
title(' Plot of output signal y over the range from n=-1 to n=10')
subplot(2,1,2)
plot(n,xA)
xlabel('--------n----------->')
ylabel('-------Values------->')
title(' Plot of input signal x over the range from n=-1 to n=10')