a=8;
tol=10^-2;
e= 1;
i=0;
while e >= tol
    fa= a^4 - 8.6*a^3 - 35.51*a^2 + 464.4*a - 998.46;
    dfa=4*a^3 - 3*8.6*a^2 - 2*35.51*a + 464.4;
    p= a - fa/dfa;
    if abs(p-a)<tol
        break
    end
    i= i+1;
    a=p;
end
fprintf('nilai a terakhir = %1.4f \n',a);
fprintf('dengan iterasi sebanyak %d kali \n', i);