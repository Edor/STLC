function mask = estrai(img, p)
mask = zeros(512);
for i = 1:512
    for j = 1:512
        temp = convertiDB(img(i,j));
        mask(i,j) = temp(p);
    end
end
end