%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

t=2:0.001:3; % ȡ��ʱ��
SNR=-10; % ����ȡ�(dB)
Am=0.5; % �źŷ���
Ac=10; % �ز�����
fc=5; % �ز�Ƶ��

message=Am*sin(pi*t)/(pi*t.*(1-t.*t));
carrier=Ac*cos(2*pi*fc.*t);
AM_signal=[1+message].*carrier;
% ���辭�� AWGN �ŵ�
RX_signal=awgn(AM_signal, SNR); % awgn ������ģ�� AWGN �ŵ�

% ��ɽ��
R2_signal = RX_signal.*carrier; % �ٳ�һ���ز�
wn = .02; % �˲�������
[b,a] = butter(2,wn); % ��ֹƵ�� = 50*0.02 = 1
demod_signal = filter(b,a,R2_signal); % ͨ���˲���


subplot(311)
plot(t,AM_signal)
grid off
title('AM �ź�')
xlabel('ʱ��'), ylabel('����')

subplot(312)
plot(t,RX_signal)
grid off
title('�����ź�')
xlabel('ʱ��'), ylabel('����')

subplot(313)
plot(t,demod_signal)
grid off
title('����ź�')
xlabel('ʱ��'), ylabel('����')

