x= -1;
Tol=0.00005;
N0 = 30;
while i < N0
fp0 =  x^4 - 2*x^2 + x -2;
dfp0 = 4*x^3 - 4*x +1;
p= x - fp0/dfp0
 if abs(p-x)<Tol
     fprintf('sukses %d ',p)

    break
end
i = i+1;
x =p
end