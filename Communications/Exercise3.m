%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 3

t=-1.5:0.1:3.0;
y=rectpuls((t-1)/2) .* cos(20*pi*t);
plot(t,y);
axis([-1.5,3.0,0,1]);
grid on;



