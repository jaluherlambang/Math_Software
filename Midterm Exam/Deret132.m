i = 3;
Z=0;
while i <= 1000
    j = i;
    N = 0 ;
      while j ~= 0
        N = N + (j-1);
        j = j-1;
      end
    Z = Z + (i * N);
    i = i+1;
end
disp(Z)