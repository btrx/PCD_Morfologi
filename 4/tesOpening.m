clear all;
close all;
pkg load image;

Img = imread('C:/Users/Doni/Documents/Akademis/Pengolahan Citra/gambar/tes2.png');
BW = im2bw(Img, 0.1);
H = [
    0  0   1  1  1  1  1  0  0
    0  1   1  1  1  1  1  1  0
    1  1   1  1  1  1  1  1  1
    1  1   1  1  1  1  1  1  1
    1  1   1  1  1  1  1  1  1
    1  1   1  1  1  1  1  1  1
    1  1   1  1  1  1  1  1  1
    0  1   1  1  1  1  1  1  0
    0  0   1  1  1  1  1  0  0 ];
G = imdilate(BW, H);
M = imerode(G, H);

 subplot(1,2,1); imshow(Img); title('asli');
 subplot(1,2,2); imshow(M,[0 1]); title('Opening');

