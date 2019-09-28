%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 function mys
% This function is written by Mr.Wang

function y = mys(x)
% Calculate raise cos with a=1 and T=2
pos1 = x==-1 | x==1; % |x|=1 须特别处理
pos0 = x==0; % x=0 须特别处理
x(pos0) = 99;
x(pos1) = 99;
y = sin(pi*x)./(pi*x.*(1-x.*x));
y(pos0) = 1;
y(pos1) = 0.5;


