%% Rozwinięcie funkcji w szereg Taylora wokół zadanego punktu X0. 
%% Analiza błędów aproksymacji
clear; clc; close all;

% Wektor argumentów dla których rysujemy wykresy
x = linspace(-2*pi, 2*pi, 100); % wektor 1x100 od -2pi do 2pi

% Pytaj użytkownika o wartość n
n = input('Podaj wartość n: ');

% Pytaj użytkownika o wartość X0
X0 = input('Podaj wartość X0: ');

% Pytaj użytkownika o wybór funkcji
wybor = input('Wybierz funkcję y:\n[1] cos(x)\n[2] sin(x)\n[3] e^x\n[4] x^2\nWybór: ');

% Definicja funkcji na podstawie wyboru użytkownika
if wybor == 1
    y = cos(x);
    y_taylor = taylor_cos(x, X0, n);
elseif wybor == 2
    y = sin(x);
elseif wybor == 3
    y = exp(x);
elseif wybor == 4
    y = x^2;
end

% Narysuj wykresy funkcji oraz rozwinięcia szeregu Taylora
fig = figure();
set(fig,'color','white')
subplot(1,2,1); plot(x, y, 'linewidth', 2);
ylim([-2*pi, 2*pi])
hold on;
plot(x, y_taylor, 'linewidth', 2);
scatter(X0, cos(X0), 'marker', 'o', 'MarkerFaceColor', 'r')
xlabel('X');
ylabel('Y');
title(['Wielomian Taylora']);
grid on;
taylor_test(x, X0);
