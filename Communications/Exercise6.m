%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

t=2:0.001:3; % 取样时间
SNR=-10; % 信噪比　(dB)
Am=0.5; % 信号幅度
Ac=10; % 载波幅度
fc=5; % 载波频率

message=Am*sin(pi*t)/(pi*t.*(1-t.*t));
carrier=Ac*cos(2*pi*fc.*t);
AM_signal=[1+message].*carrier;
% 假设经过 AWGN 信道
RX_signal=awgn(AM_signal, SNR); % awgn 函数可模拟 AWGN 信道

% 相干解调
R2_signal = RX_signal.*carrier; % 再乘一次载波
wn = .02; % 滤波器参数
[b,a] = butter(2,wn); % 截止频率 = 50*0.02 = 1
demod_signal = filter(b,a,R2_signal); % 通过滤波器


subplot(311)
plot(t,AM_signal)
grid off
title('AM 信号')
xlabel('时间'), ylabel('幅度')

subplot(312)
plot(t,RX_signal)
grid off
title('接收信号')
xlabel('时间'), ylabel('幅度')

subplot(313)
plot(t,demod_signal)
grid off
title('解调信号')
xlabel('时间'), ylabel('幅度')

