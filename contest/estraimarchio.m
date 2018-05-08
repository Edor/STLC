function[marchio,s]=estraimarchio(nomeI0,nomeI1,w)
alpha=0.05;
I0=im2double(imread(nomeI0));
I1=im2double(imread(nomeI1));
[D,T]= wavedec2(I0,3,'haar');
[C,S] = wavedec2(I1,3,'haar');
LL3length = S(1,1)*S(1,2);
marchio=zeros(1,size(w,2));
sizM = size(marchio,2);
red=floor(LL3length/sizM);
for i=LL3length+1:(red*sizM+LL3length+1)
    marchio(mod(i,sizM)+1) = marchio(mod(i,sizM)+1) + (C(i)/D(i)-1)/alpha;
end
for i=1:sizM
    marchio(i)=marchio(i)/red;
end
marchio=abs(marchio)/max(marchio);
s=corr2(w,marchio);
end