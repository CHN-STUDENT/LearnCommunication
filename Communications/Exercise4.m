%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 

S= -8:8; % ȡ����Χ (����
srate1 = 2; % ȡ���ٶ�
srate0 = 1;
srate2 = 0.5; 
st1 = S/srate1; % ȡ����ƽ�� (λ�þ���
st0 = S/srate0; % ȡ����ƽ�� (λ�þ���
st2 = S/srate2; % ȡ����ƽ�� (λ�þ���
xn0 = mys(st0); % �źź�����ֵ������
xn1 = mys(st1); % �źź�����ֵ������
xn2 = mys(st2); % �źź�����ֵ������
N1 = floor(length(st1)/2); % ������һ�룬��Ϊ�ۼ�Ҫ�Ӹ���������������Ӧ�ø�һ��
                         % lengthΪȡ����ĸ���
N0 = floor(length(st0)/2); % ������һ�룬��Ϊ�ۼ�Ҫ�Ӹ���������������Ӧ�ø�һ��
                           % lengthΪȡ����ĸ���
N2 = floor(length(st2)/2); % ������һ�룬��Ϊ�ۼ�Ҫ�Ӹ���������������Ӧ�ø�һ��
                           % lengthΪȡ����ĸ���
T1 = 1/srate1; % ȡ�����Ӧ��Ϊ�ٶȵĵ���
T2 = 1/srate2; % ȡ�����Ӧ��Ϊ�ٶȵĵ���
T0 = 1/srate0; % ȡ�����Ӧ��Ϊ�ٶȵĵ���
t = -5:0.1:5; % ���㻹ԭ�źŵ�ʱ���

rt0 = zeros(size(t));
for n=-N0:N0
rt0 = rt0 + xn0((n+N0)+1)*sinc((t-n*T0)/T0);
    % N+n+1 �պÿ���ȡ����xn�±��1-2*N+1��ֵ���պÿ����źź�����ֵ������ȡ��
end


rt1 = zeros(size(t));
for n=-N1:N1
rt1 = rt1 + xn1((n+N1)+1)*sinc((t-n*T1)/T1);
    % N+n+1 �պÿ���ȡ����xn�±��1-2*N+1��ֵ���պÿ����źź�����ֵ������ȡ��
end

rt2 = zeros(size(t));
for n=-N2:N2
rt2 = rt2 + xn2((n+N2)+1)*sinc((t-n*T2)/T2);
    % N+n+1 �պÿ���ȡ����xn�±��1-2*N+1��ֵ���պÿ����źź�����ֵ������ȡ��
end

plot(t,rt0,'-r.',t,rt1,'-b.',t,rt2,'-g.',t,mys(t),'k'), grid on;
xlabel('t'), ylabel('s(t)');
title('Reconstructed Signal');
