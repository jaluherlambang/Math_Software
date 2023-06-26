a=8; b=2;
tol=10^-2;
i = 0;
e = 1;
while e >= tol
    fa = a^4 - 8.6*a^3 - 35.51*a^2 + 464.4*a - 998.46;
    fb = b^4 - 8.6*b^3 - 35.51*b^2 + 464.4*b - 998.46;
    c = a - (fa*(b-a)) / (fb - fa);
    fc = c^4 - 8.6*c^3 - 35.51*c^2 + 464.4*c - 998.46;
  
    if(fa*fc)>0
        a = c;
        c2 = c - (fc*(b-c)) / (fb - fc);
    else
        b = c;
        c2 = a - (fa*(c-a)) / (fc - fa);
    end
    jawab = c;
    i = i + 1;
    e = abs(c2-c)*100/c2;
end
fprintf('nilai c terakhir = %1.4f \n',jawab);
fprintf('dengan iterasi sebanyak %d kali \n', i);