function matrix = greyscale(name)
x = imread(name)
xDouble = double(x)
matrix = 0.3*xDouble(:,:,1) + 0.3*xDouble(:,:,2) + 0.3*xDouble(:,:,3);
end
%This is the greyscale function
%It turns a * bit integer Array in adouble array