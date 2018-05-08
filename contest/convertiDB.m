function bin = convertiDB(decim)
n = decim;

for i = 1:8
    if n >= 1
        q = idivide(n,2,'floor');
        r = n - 2*q;
        n = q;
    else
        r = 0;
    end
    bin(i) = r;
end
end