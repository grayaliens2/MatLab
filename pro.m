greyPhoto2 = greyscale('photo2.jpg')%create greyscale matricies
greyPhoto1 = greyscale('photo1.jpg')
%R = S(256)%call S on 256 because image 2 is 256 by 256
%This value takes a long time to compute but becuase 
%matlab has the functionality of storing values
%I can run this once and still retain the value 
%even if comment this out which I have done so
%for the sake of the publishing
Y = R*greyPhoto2*R
undo = R*Y*R%gives original image in order to compare the compressed one too
figure%prints og image
imagesc(uint8(undo))
colormap('gray')
n = 256
p = 0.1
for i = 1:n%note I have modified the fuction give to use logical indexing
    j = 1 : n %the given nested for loops take approx 1 hr to complete
    Y(i, j) = (i + j >p*2*n).*(0) +(i + j <= p*2*n).*(Y(i, j))%this uses logical indexing
    %to make the calculations go by much faster
    %now it takes around 1 minute
    %what we are doing is modifying the if statement to occure in one line
    %this does exactly what the given fuction does
    %it removes information from the DST inorder to compress the image
end
counter = sum(Y(:) ~= 0)%counts number of non zero values in matrix
jk = R*Y*R %This is two convert the DST back into an image 
figure%Prints image
imagesc(uint8(jk))
colormap('gray')
counter