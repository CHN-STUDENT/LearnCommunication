%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 

S= -8:8; % 取样范围 (矩阵）
srate1 = 2; % 取样速度
srate0 = 1;
srate2 = 0.5; 
st1 = S/srate1; % 取样点平均 (位置矩阵）
st0 = S/srate0; % 取样点平均 (位置矩阵）
st2 = S/srate2; % 取样点平均 (位置矩阵）
xn0 = mys(st0); % 信号函数的值（矩阵）
xn1 = mys(st1); % 信号函数的值（矩阵）
xn2 = mys(st2); % 信号函数的值（矩阵）
N1 = floor(length(st1)/2); % 点数的一半，因为累加要从负数到正数，所以应该各一半
                         % length为取样点的个数
N0 = floor(length(st0)/2); % 点数的一半，因为累加要从负数到正数，所以应该各一半
                           % length为取样点的个数
N2 = floor(length(st2)/2); % 点数的一半，因为累加要从负数到正数，所以应该各一半
                           % length为取样点的个数
T1 = 1/srate1; % 取样间隔应该为速度的倒数
T2 = 1/srate2; % 取样间隔应该为速度的倒数
T0 = 1/srate0; % 取样间隔应该为速度的倒数
t = -5:0.1:5; % 计算还原信号的时间点

rt0 = zeros(size(t));
for n=-N0:N0
rt0 = rt0 + xn0((n+N0)+1)*sinc((t-n*T0)/T0);
    % N+n+1 刚好可以取矩阵xn下标从1-2*N+1的值，刚好可以信号函数的值（矩阵）取完
end


rt1 = zeros(size(t));
for n=-N1:N1
rt1 = rt1 + xn1((n+N1)+1)*sinc((t-n*T1)/T1);
    % N+n+1 刚好可以取矩阵xn下标从1-2*N+1的值，刚好可以信号函数的值（矩阵）取完
end

rt2 = zeros(size(t));
for n=-N2:N2
rt2 = rt2 + xn2((n+N2)+1)*sinc((t-n*T2)/T2);
    % N+n+1 刚好可以取矩阵xn下标从1-2*N+1的值，刚好可以信号函数的值（矩阵）取完
end

plot(t,rt0,'-r.',t,rt1,'-b.',t,rt2,'-g.',t,mys(t),'k'), grid on;
xlabel('t'), ylabel('s(t)');
title('Reconstructed Signal');
