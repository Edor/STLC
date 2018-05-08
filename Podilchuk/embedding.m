function [] = embedding(I, w)
[m,n]=size(I);
rm=mod(m,8);
rn=mod(n,8);
if rm==0
    mm=0;
else mm=8-rm;
end
if rn==0
    nn=0;
else nn=8-rn;
end
IM=zeros(m+mm,n+nn);
for i=1:m
 for j=1:n
    IM(i,j)=I(i,j);
 end
end

alpha = 0.1;
N = 8 * ones(1,size(IM,1)/8);
M = 8 * ones(1,size(IM,2)/8);
C = mat2cell(I,N,M);
counter = 1;
for i = 1:N
    for j = 1:N
        temp = dct2(C{i,j});
        temp(1,2) = temp(1,2) + alpha*w(counter);
        temp(2,1) = temp(2,1) + alpha*w(counter+1);
        counter = counter + 2;
        C{i,j} = idct2(temp);
    end
end
end