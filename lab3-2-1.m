fs=200;
fd=1000;
amp=3;
t=0:1/fd:1;
x=amp*square(2*pi*fs*t,50);
F=linspace(-fd/2,fd/2,length(x));
s=fft(x);
area(F,abs(s));
title("Спектр исходного сигнала");
plot(t,x)
xlim([0 0.1])
xlabel("Время (с)")
ylabel("Амплитуда (В)")
title("Исходный сигнал")
%Фильтр ФНЧ 1го порядка частота среза больше
[b1,a1]=butter(1,300/(fd/2),'low');
f1=filter(b1,a1,x);
plot(t,f1);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 1-го порядка с частотой среза болше частоты исходного сигнала");
s1=fft(f1);
area(F,abs(s1));
title("Спектр меандра при прохождении через ФНЧ 1-го порядка с частотой среза болше частоты исходного сигнала");
%Фильтр ФНЧ 1го порядка частота среза равна
[b2,a2]=butter(1,200/(fd/2),'low');
f2=filter(b2,a2,x);
plot(t,f2);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 1-го порядка с частотой среза равной частоты исходного сигнала");
s2=fft(f2);
area(F,abs(s2));
title("Спектр меандра при прохождении через ФНЧ 1-го порядка с частотой среза равной частоты исходного сигнала");
%Фильтр ФНЧ 1го порядка частота среза меньше
[b3,a3]=butter(1,100/(fd/2),'low');
f3=filter(b3,a3,x);
plot(t,f3);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 1-го порядка с частотой среза меньше частоты исходного сигнала");
s3=fft(f3);
area(F,abs(s3));
title("Спектр меандра при прохождении через ФНЧ 1-го порядка с частотой среза меньше частоты исходного сигнала");
%Фильтр ФНЧ 2го порядка частота среза больше
[b4,a4]=butter(2,300/(fd/2),'low');
f4=filter(b4,a4,x);
plot(t,f4);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 2-го порядка с частотой среза болше частоты исходного сигнала");
s4=fft(f4);
area(F,abs(s4));
title("Спектр меандра при прохождении через ФНЧ 2-го порядка с частотой среза болше частоты исходного сигнала");
%Фильтр ФНЧ 2го порядка частота среза равна
[b5,a5]=butter(2,200/(fd/2),'low');
f5=filter(b5,a5,x);
plot(t,f5);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 2-го порядка с частотой среза равной частоты исходного сигнала");
s5=fft(f5);
area(F,abs(s5));
title("Спектр меандра при прохождении через ФНЧ 2-го порядка с частотой среза равной частоты исходного сигнала");
%Фильтр ФНЧ 2го порядка частота среза меньше
[b6,a6]=butter(2,100/(fd/2),'low');
f6=filter(b6,a6,x);
plot(t,f6);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФНЧ 2-го порядка с частотой среза меньше частоты исходного сигнала");
s6=fft(f6);
area(F,abs(s6));
title("Спектр меандра при прохождении через ФВЧ 1-го порядка с частотой среза меньше частоты исходного сигнала");
%Фильтр ФНЧ 1го порядка частота среза больше
[b7,a7]=butter(1,300/(fd/2),'high');
f7=filter(b7,a7,x);
plot(t,f7);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 1-го порядка с частотой среза болше частоты исходного сигнала");
s7=fft(f7);
area(F,abs(s7));
title("Спектр меандра при прохождении через ФВЧ 1-го порядка с частотой среза болше частоты исходного сигнала");
%Фильтр ФВЧ 1го порядка частота среза равна
[b8,a8]=butter(1,200/(fd/2),'high');
f8=filter(b8,a8,x);
plot(t,f8);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 1-го порядка с частотой среза равной частоты исходного сигнала");
s8=fft(f8);
area(F,abs(s8));
title("Спектр меандра при прохождении через ФВЧ 1-го порядка с частотой среза равной частоты исходного сигнала");
%Фильтр ФВЧ 1го порядка частота среза меньше
[b9,a9]=butter(1,100/(fd/2),'high');
f9=filter(b9,a9,x);
plot(t,f9);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 1-го порядка с частотой среза меньше частоты исходного сигнала");
s9=fft(f9);
area(F,abs(s9));
title("Спектр меандра при прохождении через ФВЧ 1-го порядка с частотой среза меньше частоты исходного сигнала");
%Фильтр ФВЧ 2го порядка частота среза больше
[b10,a10]=butter(2,300/(fd/2),'high');
f10=filter(b10,a10,x);
plot(t,f10);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 2-го порядка с частотой среза болше частоты исходного сигнала");
s10=fft(f10);
area(F,abs(s10));
title("Спектр меандра при прохождении через ФВЧ 2-го порядка с частотой среза болше частоты исходного сигнала");
%Фильтр ФНЧ 2го порядка частота среза равна
[b11,a11]=butter(2,200/(fd/2),'high');
f11=filter(b11,a11,x);
plot(t,f11);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 2-го порядка с частотой среза равной частоты исходного сигнала");
s11=fft(f11);
area(F,abs(s11));
title("Спектр меандра при прохождении через ФВЧ 2-го порядка с частотой среза равной частоты исходного сигнала");
%Фильтр ФНЧ 2го порядка частота среза меньше
[b12,a12]=butter(2,100/(fd/2),'high');
f12=filter(b12,a12,x);
plot(t,f12);
xlim([0 0.1])
xlabel("Время (с)");
ylabel("Амплитуда (В)");
title("Осциллограмма меандра при прохождении через ФВЧ 2-го порядка с частотой среза меньше частоты исходного сигнала");
s12=fft(f12);
area(F,abs(s12));
title("Спектр меандра при прохождении через ФВЧ 2-го порядка с частотой среза меньше частоты исходного сигнала");

