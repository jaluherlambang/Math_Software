function Bisection(a,b)
tol=10^-2;
i = 0;
e = 0.1;
while e >= tol
    c = (b+a)/2;
    c2 = c;
    fa = a^4 - 8.6*a^3 - 35.51*a^2 + 464.4*a - 998.46;
    fc= c^4 - 8.6*c^3 - 35.51*c^2 + 464.4*c - 998.46;
    if (fa*fc) > 0
        a = c;
        c1 = (a+b)/2;
    else
        b = c;
        c1=(a+b)/2;
    end

    jawab = c;
    i = i + 1;
    e = abs(c1-c2)*100/c1;
end
fprintf('nilai c terakhir = %1.4f \n',jawab);
fprintf('dengan iterasi sebanyak %d kali \n', i);