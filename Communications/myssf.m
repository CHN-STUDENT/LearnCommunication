%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 function mysf
% This function is written by Mr.Wang

fs = 0.5; % 取样速度
st = -8:8; % 取样点
xn = mys(st); % 信号值


t = -5:0.1:5; % 计算还原信号的时间点
rt = zeros(size(t));
for n=st
rt = rt + xn(n/fs)*sinc((t-n/fs)*fs);
end
plot(t,rt), grid on;
xlabel('t'), ylabel('s(t)');
title('Reconstructed Signal');
