load functionsLUT; %inverse, invlog, log, saw. square, squareroot
%
plot(square); %to see one of LUT function
%
P1=imread('..images\lena.bmp')%Image Path
figure(2)
imshow(P1)
%
help intlut %to understand function
%
P2=intlut(P1,square); %implementing Lut functions to image
imshow(P2);
%
P3=intlut(P1,inverse);
imshow(P3)
%
P4=intlut(P1,invlog);
imshow(P4);
%
subplot(2,2,1)
imshow(P1)
%
LUT(P1,inverse)
LUT(P1,invlog)
LUT(P1,log)
LUT(P1,saw)
LUT(P1,square)
LUT(P1,squareroot)
LUT(P1,exponential)
%
