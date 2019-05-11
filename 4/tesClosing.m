clear all;
close all;
pkg load image;

Img = imread('C:/Users/Doni/Documents/Akademis/Pengolahan Citra/gambar/tes3.png');
 
BW = im2bw(Img, 0.65);  
H = ones(5); 
G = imdilate(BW, H); 
M = imerode(G, H); 

figure(1);
 subplot(1,2,1); imshow(Img); title('asli');
 subplot(1,2,2); imshow(M,[0 1]); title('closing');