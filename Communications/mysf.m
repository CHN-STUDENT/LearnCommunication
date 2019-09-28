%------------------------------
% IoT Communication Experiment
% Author:GuoZhiHong 
% StudentID:201616070320
%------------------------------

% Exercise 4 function mysf
% This function is written by Mr.Wang

function y = mysf(x)
% Calculate spectrum of raised cos with a=1, T=2

pp05 = x>0.5 | x<-0.5;
x(pp05) = 0.5;
y = 2*cos(pi*x).*cos(pi*x);