function binMatrix = image2mark(path2img)
img = imread(path2img);
binMatrix = zeros(512);
for i = 1:512
    for j = 1:512
        if img(i,j) > 0
            binMatrix(i,j) = 1;
        else
            binMatrix(i,j) = 0;
        end
    end
end
end