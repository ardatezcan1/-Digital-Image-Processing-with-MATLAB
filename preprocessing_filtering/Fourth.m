%% 1.1
close all;
clearvars;
clc;

load masks;
I=imread("..images\squares.bmp");

M1 =uint8(conv2(I,R1,'same')); %conv. mask and image
M2 =uint8(conv2(I,R2,'same'));
M3=imadd(M1,M2); %adding images - Robert Gradient

subplot(1,3,1);
imshow(M1,[]); 
title('R1');

subplot(1,3,2);
imshow(M2,[]); 
title('R2');

subplot(1,3,3);
imshow(M3,[]); 
title('Robert Gradient');
%% 1.2

M1 =uint8(conv2(I,P1,'same'));
M2 =uint8(conv2(I,P2,'same'));
M3=imadd(M1,M2);

subplot(1,3,1);
imshow(M1,[]); 
title('P1');

subplot(1,3,2);
imshow(M2,[]); 
title('P2');

subplot(1,3,3);
imshow(M3,[]); 
title('Prewitt'); % Prewit Gradient
%% 1.3

M1 =uint8(conv2(I,S1,'same'));
M2 =uint8(conv2(I,S2,'same'));
M3=imadd(M1,M2);

subplot(1,3,1);
imshow(M1,[]); 
title('S1');

subplot(1,3,2);
imshow(M2,[]); 
title('S2');

subplot(1,3,3);
imshow(M3,[]); 
title('Sobel'); % Sobel Gradient
%% 1.4

O=imread('..images\squares.bmp');
O=double(O);
I1=conv2(O,S1,'same');
I2=conv2(O,S2,'same');
OI=sqrt((I1).^2+(I2).^2);
imshow(OI,[]); title('Using Formula Gradients-Sobel');

%% 1.5
%To see details
close all;
clearvars;
clc;

I=imread('..images\squares.bmp');
load masks;

M1 =uint8(conv2(I,S1,'same'));
M2 =uint8(conv2(I,S2,'same'));
M3=imadd(M1,M2);

subplot(2,2,1);
imshow(M1,[]); 
title('M1');

subplot(2,2,2);
imshow(M2,[]); 
title('M2');

subplot(2,2,3);
imshow(M3,[]); 
title('The Sobel Gradients');

subplot(2,2,4);
imshow(I); 
title('Original Image');
%% 1.6
%Robert for the jet picture
I=imread('..images\jet.bmp');

M1 =uint8(conv2(I,R1,'same'));
M2 =uint8(conv2(I,R2,'same'));
M3=imadd(M1,M2);

subplot(1,3,1);
imshow(M1,[]); 
title('R1');

subplot(1,3,2);
imshow(M2,[]); 
title('R2');

subplot(1,3,3);
imshow(M3,[]); 
title('Roberts Gradients');
%% 1.7
%Sobel for the jet picture
M1 =uint8(conv2(I,S1,'same'));
M2 =uint8(conv2(I,S2,'same'));
M3=imadd(M1,M2);

subplot(1,3,1);
imshow(M1,[]); 
title('S1');

subplot(1,3,2);
imshow(M2,[]); 
title('S2');

subplot(1,3,3);
imshow(M3,[]); 
title('The Sobel Gradients');
%% 1.8
%Prewit for the jet picture
M1 =uint8(conv2(I,P1,'same'));
M2 =uint8(conv2(I,P2,'same'));
M3=imadd(M1,M2);

subplot(1,3,1);
imshow(M1,[]); 
title('P1');

subplot(1,3,2);
imshow(M2,[]); 
title('P2');

subplot(1,3,3);
imshow(M3,[]); 
title('The Prewitt Gradients');

%% 1.9
%Sum of Gradients-Sobelfor the jet picture

M1 =uint8(conv2(I,S1,'same'));
M2 =uint8(conv2(I,S2,'same'));
M3=imadd(M1,M2)
;
subplot(2,2,1);
imshow(M1,[]); 
title('S1');

subplot(2,2,2);
imshow(M2,[]); 
title('S2');

subplot(2,2,3);
imshow(M3,[]); 
title('The Sobel Gradients');

O=imread('..images\jet.bmp');
O=double(O);
I1=conv2(O,S1,'same');
I2=conv2(O,S2,'same');
OI=sqrt((I1).^2+(I2).^2);

subplot(2,2,4); 
imshow(OI,[]); 
title('Sum of Gradients-Sobel');

