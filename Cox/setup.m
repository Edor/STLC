function output = setup(n)
    rand('state',4);
    output = randi([0 1],1,n);
end