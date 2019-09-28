%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 2

N=10;  
t = 0:0.001:2;
s = square(2*pi*t);
fs = zeros(size(s));
for n = 1:N
    fs = fs + (4/pi)*((sin(2*pi*t*(2*n-1)))/(2*n-1));
end
plot(t,s,'b',t,fs,'r');
axis([-0.5,2.5,-1.5,1.5]);
grid on;