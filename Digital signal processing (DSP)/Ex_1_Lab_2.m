% 1. Φίλτρα γραμμικής φάσης Type I
% Δίνεται η κρουστική απόκριση του FIR φίλτρου γραμμικής φάσης Type I:
% h(n) = [−8 −1 3 −5 4 2 4 −5 3 −1 −8], n ∈ [0,10]
% Να σχεδιάσετε την απόκριση συχνότητας.

n = 20;                    % Filter order
f = [0 0.4 0.5 1];         % Frequency band edges
a = [1  1  0 0];           % Amplitudes
b = firpm(n,f,a);

bb = firls(n,f,a);
fvtool(b,1,bb,1)