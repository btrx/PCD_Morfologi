clear all;
close all;
X = imread('C:\Users\Doni\Documents\Akademis\Pengolahan Citra\gambar\axolotl.jpg');
F = rgb2gray(X);
 	
[jum_baris, jum_kolom] = size(F);
 
G = zeros(jum_baris, jum_kolom);
 
for q = 2 : jum_baris - 1
    for p = 2 : jum_kolom - 1
        p0 = F(q, p+1);
        p1 = F(q-1, p+1);
        p2 = F(q-1, p);
        p3 = F(q-1, p-1);
        p4 = F(q, p-1);
        p5 = F(q+1, p-1);
        p6 = F(q+1, p);
        p7 = F(q+1, p+1);
        tots = p0 + p1 + p2 + p3 + p4 + p5 + p6 + p7;
        if tots == 8
            G(q, p) = 0;
        else
            G(q, p) = F(q, p);
        end
    end
end

 subplot(1,2,1); imshow(F);
 subplot(1,2,2); imshow(G);