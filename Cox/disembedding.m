function w = disembedding(I,Iw,alpha)
w = zeros(1,1000);
dctimg = dct2(I);
dctimgw = dct2(Iw);
[R, C] = ndgrid(1:size(dctimg,1), 1:size(dctimg,2));
[~, idx] = sort(abs(dctimg(:)), 'descend');
ind = [R(idx), C(idx)];
[Rw, Cw] = ndgrid(1:size(dctimgw,1), 1:size(dctimgw,2));
[~, idxw] = sort(abs(dctimgw(:)), 'descend');
indw = [Rw(idxw), Cw(idxw)];
for i = 2:1001
    w(i-1) = abs((abs(dctimg(ind(i,1), ind(i,2))) - abs(dctimgw(indw(i,1), indw(i,2))))) / alpha;
end
end