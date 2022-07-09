%% 1.1
close all;
clearvars;
clc;

P1=imread('..images\lenaNoise.bmp');
M1=medfilt2(P1); %median filtering for salt and paper noise

subplot(1,2,1);
imshow(P1);
title("Original Image");

subplot(1,2,2);
imshow(M1);
title("Median Filtering Image");
%% 1.2

P2=imread('..images\lena.bmp');
M2=medfilt2(P2);
A1= uint8(filter2(fspecial('average'), P2));
D1= imabsdiff(P2,M2);
D2= imabsdiff(P2,A1);

subplot(3,2,1);
imshow(P2);
title("Original Image");

subplot(3,2,3);
imshow(M2);
title("Median Filtering Image");

subplot(3,2,4);
imshow(D1,[]);
title("Median Filtering Difference");

subplot(3,2,5);
imshow(A1);
title("Averaging Image");

subplot(3,2,6);
imshow(D2,[]);
title("Averaging Difference")
%% 1.3

for c = 1:10;
M3 = medfilt2(P2,[5 5]); %ten times median filtering for the image
end

subplot(1,2,1);
imshow(P2);
title("Original Image");

subplot(1,2,2);
imshow(M3);
title('10 X Medfilt2');