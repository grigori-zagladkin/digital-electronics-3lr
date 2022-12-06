%Фильтры
n = 14;
[z,p,k] = buttap(n);
[b,a] = zp2tf(z,p,k);
freqs(b,a)
fl = 30;
fh = 100;
Wo = 2*pi*sqrt(fl*fh); % center frequency
disp(Wo)
Bw = 2*pi*(fh-fl); % bandwidth
[bp,ap] = lp2bp(b,a,Wo,Bw);
[bs,as] = lp2bs(b,a,Wo,Bw);
%Сигнал
fnx = @(x,fn) sin(2*pi*fn*x).*exp(-fn*abs(x));
ffs = 1000;
tp = 0:1/ffs:1;
pp = fnx(tp,344.1442);
fs = 2e3;
t = 0:1/fs:1.2;
d = 0:1/3:1;
dd = [d;4.^-d]';
y = pulstran(t,dd,fnx,344.1442);
plot(t,y)
xlabel('Time (s)')
ylabel('Waveform')
Y1=filter(bp,ap,y);
Y2=filter(bs,as,y);
plot(t,Y1);
plot(t,Y2);

