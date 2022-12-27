%Part 3
close all;
clearvars;
clc;

P1=imread('bart.bmp')

subplot(1,2,1);
imshow(P1);
title('Original Image');

subplot(1,2,2);
imhist(P1); 
title('Histogram');

lowerT=190;
upperT=220;
BW=P1>lowerT & P1<upperT;
BW=255-uint8(BW); 
imshow (BW,[]);

