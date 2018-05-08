function [I0,I1] = embedding(nomeI0,nomeI1)
w = [1 0 1 1 1 1 0 0 0 0 0];
alpha = 0.05;
k = 3;
I0 = im2double(imread(nomeI0));
[C,S] = wavedec2(I0,k,'haar');
LL3length = S(1,1)*S(1,2);
sizW = size(w,2);
red=floor(LL3length/sizW);
for i=LL3length+1:(red*sizW+LL3length+1)
    C(i) = C(i)*(1 + (w(mod(i,sizW)+1)*alpha));
end
I1 = waverec2(C,S,'haar');
imwrite(I1,nomeI1);
imshow(I1);
%q=WPSNR(I0/255,I1/255);
end