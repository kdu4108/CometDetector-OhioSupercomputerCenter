function [O, I, G] = processImage(image)

O = imread(image);
I = O;
I = edge(I, 'sobel', 0.03);
I = imdilate (I, strel('disk', 3, 4));
I = imfill(I, 'holes');
mask = imread('Mask.gif');
mask = double(mask);
I = double(I);
I = I.*mask;
I = logical(I);
I = bwulterode(I);
I = bwmorph(I, 'shrink', Inf);
I = double(I);
temp = double(O);
G = temp .* I;
I = logical(I);