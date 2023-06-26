T = readmatrix("temperature.txt");
waktu = (T(:,1));
Suhu = (T(:,2));
C = Suhu;
F = C*(9/5) + 32;
writematrix(F,'HasilTemp132');

plot(waktu,F);
xlabel('waktu')
ylabel('suhu dalam F')
grid on

