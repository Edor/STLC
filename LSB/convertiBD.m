function result = convertiBD(bin)
result = 0;
for i = 1:8
    result = result + bin(i)*2^(i-1);
end