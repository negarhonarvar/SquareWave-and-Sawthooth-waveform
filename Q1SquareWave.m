%at fisrt, we want to implement the Square wave signal
Fs = 1000; % Sampling frequency
t = 0:100/Fs:10; % Time vector of 1 second
f = 1/(2*pi); % Create a sine wave of f Hz.
x= square(2*pi*t*f);
% Generate the plot, title and labels.
figure(1);
plot(t,x);
hold on
title('Square Wave Signal');
xlabel('Time (s)');
ylabel('Amplitude');
%now we aim to implement Square wave signal using fourier series
T=2*pi; % our signal period as shown in diagram
W0=2*pi/T;
A=10;
t =-2*T:2*T;% its same as Tp in shown diagram
sig_out=X_m(6,T,W0);
plot(t,sig_out);
hold off
function integral_=X_n(n,T,W0)
syms t 
  integral_= (2/T)*int(1*sin(n*W0*t),t,0,T/2);
end
function coefficent=X_m(m,T,W0)
    t =-2*T:2*T;
    
    coefficent=X_n(0,T,W0)*sin(W0*0*t);
    for i =1:m
    coefficent=coefficent+X_n(i,T,W0)*sin(W0*i*t);
    end


end