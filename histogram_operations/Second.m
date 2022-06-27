%% Part1

clearvars;
close all;
clc;

P1=imread('..images\phobos.bmp');
HE= histeq(P1); % Enhance contrast using histogram equalization

subplot(1,2,1);
imshow(P1)
title("Original");

subplot(1,2,2);
imshow(HE)
title("Histeq");
%% Part2

load desiredHistogram;
HE2=histeq(P1,desiredHistogram) % manually load

subplot(1,3,1);
imshow(P1);
title("Original");

subplot(1,3,2);
imshow(HE2);
title("Histeq");

subplot(1,3,3);
imhist(HE2,256);
title("Histogram");
%% Part3

% compare Strestching, CLAHE, Histeq

HE3 = adapthisteq(P1);
[H,x]=imhist(P1);
C=cumsum(imhist(P1));
CR = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P1,Cres)

HS1=imadjust(P1);

subplot(1,3,1);
imshow(Ilut);
title("CLAHE");

subplot(1,3,2);
imshow(HS1);
title("Streching");

subplot(1,3,3);
imshow(HE2);
title("Histeq");


