%% Part1

clearvars;
close all;
clc;
% Get RGB values
lena=imread('..images\lenaRGB.bmp');
lenaR=lena(:,:,1);
lenaG=lena(:,:,2);
lenaB=lena(:,:,3);

subplot(1,3,1);
imshow(lenaR);

subplot(1,3,2);
imshow(lenaG);

subplot(1,3,3);
imshow(lenaB);
%% Part2

HE = histeq(lena)

subplot(1,2,1);
imshow(lena);
title("Original");

subplot(1,2,2); 
imshow(HE);
title("Histeq");
%% Part3

% Appling Histeq function

figure;
imageEQ=lena;
imageEQ(:,:,1)=histeq(lenaR);
imshow(imageEQ);

figure;
imageEQ=lena;
imageEQ(:,:,2)=histeq(lenaG);
imshow(imageEQ);

figure;
imageEQ=lena;
imageEQ(:,:,3)=histeq(lenaB);
imshow(imageEQ);
%% Part4

%With HSV Colour Space

figure;
hsv = rgb2hsv(lena)
lenaV=lena(:,:,3);
imageEQ=lena;
imageEQ(:,:,3)=histeq(lenaV);
imshow(imageEQ)

figure;
hsv = rgb2hsv(lena)
lenaV=lena(:,:,3);
imageEQ=lena;
imageEQ(:,:,2)=histeq(lenaV);
imageEQ(:,:,3)=histeq(lenaV);
imageEQ(:,:,1)=histeq(lenaV);
imshow(imageEQ)
%% Part5

hsv = rgb2hsv(lena);
lenaV=lena(:,:,3);
imageEQ=lena;
heq=histeq(lena(:,:,3));
imshow(imageEQ)
lena=im2double(lena)
rgb = hsv2rgb(lena)
imshow(lena);
%% Part6

%Replace Lena img to lake img

clearvars;
close all;
clc;


lake=imread('..images\lake.jpg');
lakeR=lake(:,:,1);
lakeG=lake(:,:,2);
lakeB=lake(:,:,3);
 
subplot(1,3,1);
imshow(lakeR);
 
subplot(1,3,2);
imshow(lakeG);
 
subplot(1,3,3);
imshow(lakeB);
%% Part7

HE = histeq(lake)
 
subplot(1,2,1);
imshow(lake);
title("Original");
 
subplot(1,2,2); 
imshow(HE);
title("Histeq");
%% Part8

figure;
imageEQ=lake;
imageEQ(:,:,1)=histeq(lakeR);
imshow(imageEQ);

figure;
imageEQ=lake;
imageEQ(:,:,2)=histeq(lakeG);
imshow(imageEQ);

figure;
imageEQ=lake;
imageEQ(:,:,3)=histeq(lakeB);
imshow(imageEQ);
%% Part9

imageEQ=lake;
imageEQ(:,:,1)=histeq(lakeR);
imageEQ(:,:,2)=histeq(lakeG);
imageEQ(:,:,3)=histeq(lakeB);
imshow(imageEQ);
%% Part10

figure;
hsv = rgb2hsv(lake)
lakeV=lake(:,:,3);
imageEQ=lake;
imageEQ(:,:,3)=histeq(lakeV);
imshow(imageEQ)

figure;
hsv = rgb2hsv(lake)
lakeV=lake(:,:,3);
imageEQ=lake;
imageEQ(:,:,2)=histeq(lakeV);
imageEQ(:,:,3)=histeq(lakeV)
imageEQ(:,:,1)=histeq(lakeV)
imshow(imageEQ)
%% Part11

figure;
hsv = rgb2hsv(lake);
lenaV=lake(:,:,3);
imageEQ=lake;
heq=histeq(lake(:,:,3));
imshow(imageEQ)

figure;
lake=im2double(lake)
rgb = hsv2rgb(lake)
imshow(lake);
