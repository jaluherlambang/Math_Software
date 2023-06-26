xawal = 0.2;DataX =[];DataH =[];
h = 0.001;
while h <= 1
    DataX = [DataX xawal];
    x = xawal + h*sin(xawal);
    disp(x);
    xawal = x;
    DataH = [DataH h];
    h = h + 0.001;
end
plot(DataH,DataX,'-');
xlabel("h");
ylabel("x");
title("Pendekatan Euler")