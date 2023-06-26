function hasil = MaCos132(x)
i = 1;
cos_x =1;

while i<= 10
    cos_xx = ((-1)^i) .* ((x.^(2*i))/factorial(2*i));
    cos_x =  cos_x + (cos_xx);
    i = i+1 ;
end
disp(cos_x)
