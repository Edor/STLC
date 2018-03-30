function [] = embedding(I, alpha, w)
if (size(I,1)*size(I,2)/4) ~= size(w,1)
    error('Errore: immagine e marchio di dimensioni incompatibili')
end
N = 8 * ones(1,size(I,1));
C = mat2cell(I,N,N);
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