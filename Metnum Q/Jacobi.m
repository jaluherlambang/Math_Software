function Jacobi(n)
i = 0;
 x1=0;
 x2=0;
 x3=0;
while i < n
    y1 = x2 - 2*x3 - 3;
    y2 = 2*x1 + x3 + 1;
    y3 = x1 + 2*x2 - 6;
    x1=y1;
    x2=y2;
    x3=y3;
    i = i+1;
end
disp(x1)
disp(x2)
disp(x3)
