%Part 1.1
close all;
clearvars;
clc;

P1=imread('..images\coins.png');%Image Path

subplot(1,2,1);
imshow(P1);
title('Original Image');

subplot(1,2,2);
imhist(P1); 
title('Histogram');
%% Part 1.2

% 'im2bw' function to Convert image to binary image, based on threshold
BW1 = im2bw(P1,0.2);
BW2 = im2bw(P1,0.4);
BW3 = im2bw(P1,0.8);

subplot(2,2,1);
imshow(P1);
title('Original Image');

subplot(2,2,2);
imshow(BW1);
title('Binarization 0.2');

subplot(2,2,3);
imshow(BW2);
title('Binarization 0.4');

subplot(2,2,4);
imshow(BW3);
title('Binarization 0.8');
%% Part 1.3
P2=imread('..images\shape1.png');

subplot(2,1,1);
imshow(P2);
title('Original Image: Shape1');

subplot(2,1,2);
imhist(P2); % Histogram of image data
title('Histogram: Shape1');


P3=imread('..images\shape2.png');

subplot(1,2,1);
imshow(P3);
title('Original Image: Shape2');

subplot(1,2,2);
imhist(P3); 
title('Histogram: Shape2');


P4=imread('..images\shape3.png');

subplot(1,2,1);
imshow(P4);
title('Original Image: Shape3');

subplot(1,2,2);
imhist(P4); 
title('Histogram: Shape3');


P5=imread('..images\shape4.png');

subplot(1,2,1);
imshow(P5);
title('Original Image: Shape4');

subplot(1,2,2);
imhist(P5); 
title('Histogram: Shape4');

%Note: Determining the results of the histogram calculating the threshold 
% is getting harder if we compare Shape1 and Shape2. Every time when we 
% added some noise, this situation will continue that way. Now, it seems 
% almost impossible to determine the threshold.
%% Part 1.4

threshhold = graythresh(P1) % Global image threshold using Otsu's method

P1=imread('coins.png');%Image Path

BW = imbinarize(P1, threshhold); %Binarize grayscale image 
BMW = im2bw(P1,0.4);

subplot(1,2,1);
imshow(BMW);
title('Binarization 0.4');

subplot(1,2,2);
imshow(BW);
title('Graythresh by Otsu');
%% Part 1.5

clear all;
clearvars;
clc;

P1=imread('..images\coins.png');
K=clusterKittler(P1) % Kittler-Illingworth Thresholding
Y=entropyYen(P1) 

K1=K/255
Y1=Y/255

BW = imbinarize(P1, K1);
BW1= imbinarize(P1, Y1);

threshhold = graythresh(P1)
BW2 = imbinarize(P1, threshhold);

BW3 = im2bw(P1,0.4);

subplot(3,2,1);
imshow(P1);
title('The Input Image');

subplot(3,2,2);
imhist(P1);
title('Its Histogram');

subplot(3,2,3);
imshow(BW);
title(['Kittler Thershold',num2str(K)]); % 'num2str' is converting numbers to character array

subplot(3,2,4);
imshow(BW1);
title(['Yen Thershold',num2str(Y)]);

subplot(3,2,5);
imshow(BW2);
title(['GrayThresh',num2str(threshhold)]);

subplot(3,2,6);
imshow(BW3);
title('Histogram 0.4');
%%  Part 1.6
P2 = imread('rice.png');
threshhold2 = graythresh(P2)
BAW = imbinarize(P2,threshhold2);
BMW = im2bw(P2,0.45);

subplot(2,2,1);
imshow(P2);
title('The Input Image');

subplot(2,2,2);
imhist(P2);
title('Its Histogram');

subplot(2,2,3);
imshow(BMW);
title('Manually Threshols 0.45');

subplot(2,2,4);
imshow(BAW);
title(['Automatic Binarization',num2str(threshhold2)]);




P3 = imread('text.bmp');
threshhold3 = graythresh(P3)
BAW2 = imbinarize(P3,threshhold3);
BMW2 = im2bw(P3,0.5);

subplot(2,2,1);
imshow(P3);
title('The Input Image');

subplot(2,2,2);
imhist(P3);
title('Its Histogram');

subplot(2,2,3);
imshow(BMW2);
title('Manually Threshols 0.5');

subplot(2,2,4);
imshow(BAW2);
title(['Automatic Binarization',num2str(threshhold3)]);




P4 = imread('objects.bmp');
threshhold4 = graythresh(P4)
BAW3 = imbinarize(P4,threshhold4);
BMW3 = im2bw(P4,0.5);

subplot(2,2,1);
imshow(P4);
title('The Input Image');

subplot(2,2,2);
imhist(P4);
title('Its Histogram');

subplot(2,2,3);
imshow(BMW3);
title('Manually Threshols 0.5');

subplot(2,2,4);
imshow(BAW3);
title(['Automatic Binarization',num2str(threshhold4)]);


P5 = imread('catalogue.bmp');
threshhold5 = graythresh(P5)
BAW4 = imbinarize(P5,threshhold5);
BMW4 = im2bw(P5,0.5);

subplot(2,2,1);
imshow(P5);
title('The Input Image');

subplot(2,2,2);
imhist(P5);
title('Its Histogram');

subplot(2,2,3);
imshow(BMW4);
title('Manually Threshols 0.5');

subplot(2,2,4);
imshow(BAW4);
title(['Automatic Binarization',num2str(threshhold5)]);