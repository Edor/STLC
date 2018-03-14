function img = nascondi(path2img, p, M)
img = imread(path2img);
for i = 1:512
    for j = 1:512
        temp = convertiDB(img(i,j));
        temp(p) = M(i,j);
        img(i,j) = convertiBD(temp);
    end
end
end