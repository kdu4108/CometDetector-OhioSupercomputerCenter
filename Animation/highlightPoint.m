function colorful = highlightPoint(image,r,c)

%makes square/mask
r = [(r+15) (r+15) (r-15) (r-15)];
c = [(c-15) (c+15) (c+15) (c-15)];
mask=roipoly(image,r,c);
%combines mask and image/controls opaqueness of square
f=@(x) imadjust(x,[],[],.6);
colorful=roifilt2(image,mask,f);
imshow(colorful);