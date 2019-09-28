s=[ 1 1 0 1 0 0 0 0 ];
y1=zeros(size(s));
y2=zeros(size(s));
len=length(s);
for n=1:len
    y1(n)=s(n);
    if s(n)==1
       y2(n)=1; 
    else
       y2(n)=-1;
    end
end
subplot(211);
plot(s,y1);
subplot(212);
plot(s,y2);