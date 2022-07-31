% 2. Σχέση γραμμικής συνέλιξης και κυκλικής συνέλιξης
% Δίνονται τα σήματα πεπερασμένου μήκους
% x1(n) = [1 2 3 4], n ∈ [0,3]
% x2(n) = [1 −1 1 1], n ∈ [0,3]
% Να υπολογίσετε
% - την γραμμική συνέλιξη y(n) των σημάτων x1(n) και x2(n)
% - την κυκλική συνέλιξη 4 σημείων y4(n) των σημάτων x1(n) και x2(n)
% Να βρείτε την σχέση της γραμμικής συνέλιξης και της κυκλικής συνέλιξης.

clc;
pkg load signal
x1 = [1 2 3 4];
x2 = [1 -1 1 1];

% γραμμική συνέλιξη y(n) των σημάτων x1(n) και x2(n)
clin = conv(x1,x2);
disp(clin);

% κυκλική συνέλιξη 4 σημείων y4(n) των σημάτων x1(n) και x2(n)
clin_4 = cconv(x1,x2,4);
disp(clin_4);

% σχέση γραμμικής συνέλιξης και κυκλικής συνέλιξης
xpad = [x1 zeros(1,8-length(x1))];
ypad = [x2 zeros(1,8-length(x2))];
ccirc = ifft(fft(xpad).*fft(ypad));

subplot(2,1,1)
stem(clin,'filled')
ylim([0 8])
title('Linear Convolution of x and y')

subplot(2,1,2)
stem(ccirc,'filled')
ylim([0 8])
title('Circular Convolution of xpad and ypad')




