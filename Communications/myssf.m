%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 function mysf
% This function is written by Mr.Wang

fs = 0.5; % ȡ���ٶ�
st = -8:8; % ȡ����
xn = mys(st); % �ź�ֵ


t = -5:0.1:5; % ���㻹ԭ�źŵ�ʱ���
rt = zeros(size(t));
for n=st
rt = rt + xn(n/fs)*sinc((t-n/fs)*fs);
end
plot(t,rt), grid on;
xlabel('t'), ylabel('s(t)');
title('Reconstructed Signal');
