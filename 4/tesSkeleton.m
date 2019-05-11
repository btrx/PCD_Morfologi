clear all;
close all;

Img = imread('C:/Users/Doni/Documents/Akademis/Pengolahan Citra/gambar/pitik.png');
Img = im2bw(Img, 0.5);
G = bwmorph(Img, 'skel', inf);

 subplot(1,2,1); imshow(Img); title('awal');
 subplot(1,2,2); imshow(G); title('skeleton');
