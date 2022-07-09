%% 1.1
close all;
clearvars;
clc;

P1=imread("..images\moon.png");
M=[ 0 1 0; 1 -4 1; 0 1 0]; % mask
M=M/9;

K1 = conv2(P1,M,'same'); % Convolution with mask

AB1=abs(K1) % taking absolute value

K11=uint8(K1);
A1=imadd(K11,128);

subplot(1,3,1); 
imshow(P1,[]); 
title('Orginal Image');

subplot(1,3,2); 
imshow(AB1,[]); 
title('Absolute Image');

subplot(1,3,3); 
imshow(A1,[]); 
title('Adding Image');
%% 1.2
L1 = uint8(filter2(fspecial('laplacian'), P1)); % Implementing Laplacian filter to the Image

subplot(1,2,1); 
imshow(P1,[]); 
title('Orginal Image');

subplot(1,2,2);
imshow(L1); 
title('Laplacian Image');
%% 1.3
AD1=imadd(P1,L1,'uint16') % adding images ( Lalplacian one and Orginal one)
SB1 = imsubtract(P1, L1); % substracting images ( Lalplacian one and Orginal one)

subplot(1,3,1); 
imshow(P1,[]); 
title('Orginal Image');

subplot(1,3,2); 
imshow(SB1,[]); 
title('Laplacian Substratct Image'); % More sharpening

subplot(1,3,3); 
imshow(AD1,[]); 
title('Laplacian Adding Image'); % More smooth
