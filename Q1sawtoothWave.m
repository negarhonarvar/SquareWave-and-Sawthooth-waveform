freq = 1; % Sawtooth frequency 1Hz
T = 4 * freq ; 
fs = 1000; % Sampling Rate
t = 0:1/fs:T-1/fs;
x = sawtooth(2*pi*freq*t);
figure(1);
plot(t,x)
title('Saw Tooth Signal');
xlabel('Time (s)');
ylabel('Amplitude');
acc = 0 ;
n = 3 ; % Number of harmonics.
for i = 1  : n
    acc = acc + (1 / i) * sin((i * pi * t) / 0.5) ;
end
acc = 0.5 - (1 / pi)*(acc) ;
hold on
plot(t , acc)
hold off
grid on