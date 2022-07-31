% Να σχεδιάσετε Low-Pass filter με τις παρακάτω προδιαγραφές:
% ωs=4π/10, ap=20 dB
% ωp=2π/10, as= 2dB
% με χρήση φίλτρου Chebychev.
% Να υπολογίσετε την τάξη του φίλτρου, την συχνότητα ζώνης αποκοπής και την συνάρτηση μεταφοράς.
pkg load signal
clc;

ap = 2;
as = 20;

wp = 2*pi/10;
ws = 4*pi/10;

[n,wn] = cheb1ord(wp/pi, ws/pi, ap, as)
[b,a] = cheby1(n, ap, wn)

w = 0:0.01:pi;
[h,ph] = freqz(b, a, w);
m = 20*log(abs(h));
an = angle(h);

subplot(2,1,1);
plot(ph/pi, m);
grid;
xlabel('Normalized frequency');
ylabel('Gain in db');
subplot(2,1,2);
plot(ph/pi, an);
grid;
xlabel('Normalized frequency');
ylabel('Phase in radians');