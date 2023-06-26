function Gauss_Seidel(n)
i = 0;
 x1=0;
 x2=0;
 x3=0;
while i < n
    x1 = 0.5*x2 - 0.5*x3 - 0.5;
    x2 = -0.5*x1 - 0.5*x3 + 3;
    x3 = -0.5*x1 + 0.5*x2 - 1.5;
    fprintf('iterasi ke-%d \n',i+1);
    disp(x1)
    disp(x2)
    disp(x3)
    i = i+1;

end