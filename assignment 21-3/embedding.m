function myImg = embedding(I,alpha,w)
dctimg = dct2(I);
[R, C] = ndgrid(1:size(dctimg,1), 1:size(dctimg,2));
[b, idx] = sort(abs(dctimg(:)), 'descend');
ind = [R(idx), C(idx)]; 
for i = 2:1001
    if dctimg(ind(i,1), ind(i,2)) > 0
        dctimg(ind(i,1), ind(i,2)) = dctimg(ind(i,1), ind(i,2)) + alpha*w(i-1);
    else
        dctimg(ind(i,1), ind(i,2)) = dctimg(ind(i,1), ind(i,2)) - alpha*w(i-1);
    end
end
myImg = idct2(dctimg);
end