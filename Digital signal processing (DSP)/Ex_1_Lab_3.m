% 1. Σχεδίαση FIR φίλτρων με χρήση παραθύρων
% Να σχεδιάσετε FIR φίλτρο με χρήση του παραθύρου Hamming για
% ω=π/4, Ν=50

clc;

n=-50:50;
w1=0.2*pi;
w2=0.4*pi;
h1=(w2/pi)*sin(n*w2)./(n*w2)-(w1/pi)*sin(n*w1)./(n*w1);   
h1(51)=w2/pi-w1/pi;             
h2=h1.*hamming(101)';           %apply Hamming window to h1
plot(n,h1,'rx-',n,h2,'bo-');    %plot impulse responses
xlabel('n'); ylabel('Impulse Response'); legend('h','hamm(h)');
fvtool(h1,'magnitude');
fvtool(h2,'magnitude');
fvtool(h1,'phase');
fvtool(h2,'phase');