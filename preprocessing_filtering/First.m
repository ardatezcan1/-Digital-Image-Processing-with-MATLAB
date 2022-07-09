%% 1.1
close all;
clearvars;
clc;

help('conv2') % To understand 'conv2' (2-D Convolution)

P1=imread("..images\board.png");
A=rand(3); % generates a random number
B=rand(3);
C1=conv2(A,B,'same')
mesh(C1)

%% 1.2

close all;
clearvars;
clc;

P1=imread("..images\board.png");
A=rand(3);
B=rand(3);
F1=uint8(conv2(fspecial("average"),P1)); % fspecial for creating predefined 2-D filter
P11 = uint8(filter2(fspecial('average'), P1));
D1=imabsdiff(P1,P11); % calculate absolute difference


subplot(1,3,1); 
imshow(P1); 
title('Orginal Image');

subplot(1,3,2); 
imshow(F1); 
title('Converted Image');

subplot(1,3,3); 
imshow(D1,[]); 
title('Difference Image');
%% 1.3
%Changing Kernel Size and Implementing the Images
K1 = fspecial('average',3);
UC = imfilter(P1,K1,'replicate');

K2 = fspecial('average',5);
BES = imfilter(P1,K2,'replicate');

K3 = fspecial('average',9);
DOKUZ = imfilter(P1,K3,'replicate');

K4 = fspecial('average',15);
ONBES = imfilter(P1,K4,'replicate');

K5 = fspecial('average',35);
OTUZBES = imfilter(P1,K5,'replicate');

subplot(3,2,1);
imshow(P1); 
title('Orginal Image');

subplot(3,2,2);
imshow(UC);
title('Kernel Size 3');

subplot(3,2,3);
imshow(BES);
title('Kernel Size 5');

subplot(3,2,4);
imshow(DOKUZ);
title('Kernel size 9');

subplot(3,2,5);
imshow(ONBES);
title('Kernel size 15');

subplot(3,2,6);
imshow(OTUZBES);
title('Kernel size 35');
%% 1.4

P2=imread("..images\lena.bmp");
A=rand(3);
B=rand(3);
F2=uint8(conv2(fspecial("average"),P2));
P22 = uint8(filter2(fspecial('average'), P2)); % filter2 means 2-D digital filter
D2=imabsdiff(P2,P22);

subplot(1,3,1); 
imshow(P2); 
title('Orginal Image');
 
subplot(1,3,2); 
imshow(F2); 
title('Converted Image');
 
subplot(1,3,3); 
imshow(D2,[]); 
title('Difference Image');
%% 1.5
%Changing Kernel Size and Implementing the Image
P2=imread('..images\lena.bmp');

UC1 = imfilter(P2,K1,'replicate');

BES1 = imfilter(P2,K2,'replicate');
 
DOKUZ1 = imfilter(P2,K3,'replicate');
 
ONBES1 = imfilter(P2,K4,'replicate');
 
OTUZBES1 = imfilter(P2,K5,'replicate');
 
subplot(3,2,1);
imshow(P2); 
title('Orginal Image');
 
subplot(3,2,2);
imshow(UC1);
title('Kernel Size 3');
 
subplot(3,2,3);
imshow(BES1);
title('Kernel Size 5');
 
subplot(3,2,4);
imshow(DOKUZ1);
title('Kernel size 9');
 
subplot(3,2,5);
imshow(ONBES1);
title('Kernel size 15');
 
subplot(3,2,6);
imshow(OTUZBES1);
title('Kernel size 35');
%% 1.6
%Same goes for the lena picture
close all;
clearvars;
clc;

A = rand(3);
B = rand(3);
P2=imread('..images\lena.bmp');
F2= uint8(conv2(fspecial('average'), P2));

M=[1 2 1 ; 2 4 2 ; 1 2 1]
H = 0:1;
H = rescale(M)
M= M/ sum(sum(M));

subplot(1,3,1); 
imshow(P2); 
title('Orginal Image');
 
subplot(1,3,2); 
imshow(F2); 
title('Converted Image');
 
P22 = uint8(filter2(fspecial('average'), P2));
D2=imabsdiff(P2,P22);

subplot(1,3,3); 
imshow(D2,[]); 
title('Difference Image');
%% 1.7
%Gaussian Filter
hsize=[100 100]
sigma=100

GS = uint8(conv2(fspecial('gaussian',hsize,sigma), P2)); % returns a rotationally symmetric 
                                                         % Gaussian lowpass filter of size 
                                                         % hsize with standard deviation sigma

subplot(1,2,1); 
mesh(GS);

subplot(1,2,2); 
imshow(GS);

%% 1.8

% The adverse effect of low-pass filtering is a certain loss of sharpness.
% This can be partially overcome by the appropriate kernel selection.
% Use Mask M

M=[1 2 1 ; 2 4 2 ; 1 2 1] %mask
H = 0:1;
H = rescale(M)
M= M/ sum(sum(M));

A=rand(3);
B=rand(3);
P2=imread("..images\lena.bmp");
F2=uint8(conv2(P2,M,'same'));

subplot(1,3,1); 
imshow(P2); 
title('Orginal Image');
 
subplot(1,3,2); 
imshow(F2); 
title('Converted Image');
 
P22 = uint8(filter2(M, P2));
D2=imabsdiff(P2,P22);
 
subplot(1,3,3); 
imshow(D2,[]); 
title('Difference Image');
