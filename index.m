%N=input("Порядок цепи: ");
%a=zeros(N+1,1);
%b=zeros(N,1);
%for i=0:N
 %   if i==0
  %      a(1)=input("Введите a0: ");
   %     continue
    %end
    %a(i+1)=input("Введите a"+i+": ");
    %b(i)=input("Введите b"+i+": ");
%end
b=[0.75 0.5];
a=[1 0.2 0.1];
%Сформируем входное воздействие - ЛЧМ сигнал:
fs = 8e3;
t = 0:1/fs:1;
x = chirp(t,0,1,4000);
plot(t,x,'LineWidth',2);
xlim([0 0.1]);
grid on;
title('ЛЧМ сигнал во временной области');
xlabel('Время (с)');
ylabel('Амплитуда');


freqz(b,a,[],fs);
title('АЧХ и ФЧХ фильтра');
[z,p,k] = tf2zpk(b,a);
zplane(z,p);
title('Нуль-полюсная диаграмма');
helperfunc2(b,a,fs);
y = filter(b,a,x);
plot(t,x);
ylim([-1.2 1.2]);
hold on;
plot(t,y);
title('Отфильтрованный ЛЧМ сигнал');
xlabel('Время (с)');
ylabel('Амплитуда');
grid on;
hold off;
h = impz(b,a);
stem(h,'LineWidth',3);
title('Импульсная характеристика фильтра');
grid on;
y2 = conv(x,h); 
plot(t,y);
ylim([-1.2 1.2]);
hold on;
plot(t,y2(1:8001));
title('Отфильтрованный ЛЧМ сигнал');
xlabel('Время (с)');
ylabel('Амплитуда');
grid on;
hold off;

