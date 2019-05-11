clear all;
close all;

function G = thm(F, H)
% THM Digunakan untuk menangani transformasi Hit-or-Miss
%     F adalah citra yang akan dikenai operasi
%     H adalah elemen penstruktur

[tinggi, lebar] = size(H);
H1 = H;
H2 = not(H1);
G = and(imerode(F, H1) , erosi(not(F), H2));

Kunci = imread('C:/Users/Doni/Documents/Akademis/Pengolahan Citra/gambar/tes4.png');
H = [0 1 1; 0 1 1; 0 1 1];
G = thm(Kunci, H); imshow(G) 
