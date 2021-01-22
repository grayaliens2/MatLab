problem1 = S(5)
ident = problem1*problem1

greyPhoto2 = greyscale('photo2.jpg')%create greyscale matricies
greyPhoto1 = greyscale('photo1.jpg')
%R = S(256)%call S on 256 because image 2 is 256 by 256
Y = R*greyPhoto2*R %this will give us the DST
undo = R*Y*R %to undo the dst multiply both sides by R
%this will reduce down to I*Y*I or the identity matrix 
%on both sides of Y
figure
imagesc(uint8(undo))
colormap('gray')
imwrite(uint8(undo), 'Undo DST.jpg')

figure
imagesc(uint8(Y))
n = 256
p = 2
for i = 1:n
    j = 1 : n
    Y(i, j)  = 1
end
 = R*Y*R
figure
imagesc(uint8(Y))
imwrite(uint8(Y), 'Compressed Image2 P = 2jpg')