%% Part1

clearvars;
close all;
clc;

P1=imread('..images\lena1.bmp');
P2=imread('..images\lena2.bmp');
P3=imread('..images\lena3.bmp');
P4=imread('..images\lena4.bmp');

subplot(2,4,1); 
imshow(P1);
title("lena1");

subplot(2,4,2); 
imshow(P2);
title("lena2");

subplot(2,4,3); 
imshow(P3);
title("lena3");

subplot(2,4,4); 
imshow(P4);
title("lena4");

%Histogram Values

subplot(2,4,5); 
imhist(P1,256); 
title("lena1Hist");

subplot(2,4,6); 
imhist(P2,256);
title("lena2Hist");

subplot(2,4,7); 
imhist(P3,256);
title("lena3Hist");

subplot(2,4,8); 
imhist(P4,256);
title("lena4Hist");
%% Part2

P5=imread("..images\hist1.bmp");
subplot(1,2,1);
imshow(P5);

subplot(1,2,2);
imhist(P5,256);
%% Part3

P5=imread("..images\hist1.bmp");
HS1=imadjust(P5); % maps the intensity values in grayscale image I to new 
                  % values in J. By default, imadjust saturates the bottom 
                  % 1% and the top 1% of all pixel values. This operation 
                  % increases the contrast of the output image J.

subplot(1,3,1); 
imshow(P5);
title("Original")

subplot(1,3,2); 
imshow(HS1);
title("New Picture")

subplot(1,3,3); 
imhist(HS1);
title("Hist of New Picture");
%% Part4

clearvars;
close all;
clc;

P5 = imread('..images\hist1.bmp');
[H,x]=imhist(P5);
C=cumsum(imhist(P5));%Cumulative sum of histogram values
bar(x,H);


k=max(C)./max(H); %ratio
C2=C./k; %after rescaling
hold on

subplot(1,2,1); 
plot(x,H);
title("Histogram");

subplot(1,2,2); 
plot(x,C2);
title("Cumulative Histogram");
%% Part5

HE = histeq(P5);
CR = rescale(C,0,255);
% for LUT function, data type change
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P5,Cres);%LUT transform operation
figure,
subplot(1,2,1),imhist(Ilut);title('LUT histogram');
subplot(1,2,2),imshow(Ilut);title('LUT operation Image');
%% Part6

HE2 = adapthisteq(P5); % histogram equalization using the CLAHE algorithm
                       % Contrast Limited Adaptive Histogram Equalization
CR = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P5,Cres);

subplot(1,2,1)
imhist(Ilut);
title('LUT histogram');

subplot(1,2,2)
imshow(Ilut);
title('LUT operation Image');
%% Part7

% implement Part5 and Part6 to other images

P6=imread("..images\hist2.bmp");

HS2=imadjust(P6);
[H,x]=imhist(P6);
C=cumsum(imhist(P6));
HE = histeq(P6);
CR = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P6,Cres);

HE2 = adapthisteq(P6);
CR2 = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR2);
Ilut2 = intlut(P6,Cres)

subplot(1,4,1);
imshow(P6);
title("Orginal Image");

subplot(1,4,2);
imshow(HS2);
title("Skretching");

subplot(1,4,3);
imshow(Ilut2);
title("HE");

subplot(1,4,4);
imshow(Ilut2);
title("CLAHE");

%% Part8

% implement Part5 and Part6 to other images

P7=imread("..images\hist3.bmp"); 
HS2=imadjust(P7);
[H,x]=imhist(P7);
C=cumsum(imhist(P7));
HE = histeq(P7);
CR = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P7,Cres);
 
HE2 = adapthisteq(P7);
CR2 = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR2);
Ilut2 = intlut(P7,Cres)
 
subplot(1,4,1);
imshow(P7);
title("Orginal Image");
 
subplot(1,4,2);
imshow(HS2);
title("Skretching");
 
subplot(1,4,3);
imshow(Ilut2);
title("HE");
 
subplot(1,4,4);
imshow(Ilut2);
title("CLAHE");
%% Part9

% implement Part5 and Part6 to other images

P8=imread("..images\hist4.bmp"); 
HS2=imadjust(P8);
[H,x]=imhist(P8);
C=cumsum(imhist(P8));
HE = histeq(P8);
CR = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR);
Ilut = intlut(P8,Cres);
 
HE2 = adapthisteq(P8);
CR2 = rescale(C,0,255);
x=uint8(x);
H=uint8(H);
Cres=uint8(CR2);
Ilut2 = intlut(P8,Cres)
 
subplot(1,4,1);
imshow(P8);
title("Orginal Image");
 
subplot(1,4,2);
imshow(HS2);
title("Skretching");
 
subplot(1,4,3);
imshow(Ilut2);
title("HE");
 
subplot(1,4,4);
imshow(Ilut2);
title("CLAHE");


