clear all;
close all;

function hasil = perimeter(BW)
% PERIM1 Untuk menghitung perimeter suatu objek pada
%    BW (citra biner)
%    hasil menyatakan hasil perhitungan perimeter
 
U = inbound_tracing(BW);
hasil = length(U) - 1;
Img = imread('grayscale.jpg');
perimeter(Img)
