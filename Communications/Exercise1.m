%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 1

t=0:0.0001:0.1; % 范围0-0.1,间隔0.0001
x=cos(100*pi*t);
y=cos(1000*pi*t);
z=x.*y;
subplot(311); % 3列1行, 第一个图
plot(t,x);
subplot(312); % 3列1行, 第二个图
plot(t,y);
subplot(313); % 3列1行, 第三个图
plot(t,z);
