%% Part 2.1
close all;
clearvars;
clc;

I=imread('catalogue.bmp')
[X,Y]= size(I)
IBW=I
IBW=uint8(IBW)

for i=1:X  % pixel to pixel
    for j=1:Y
        ML=meanLT(i,j,9,I,X,Y)
        if IBW(i,j)>ML
            IBW(i,j)=255
        else
            IBW(i,j)=0   
        end
    end
end
subplot(1,2,2);
imshow(IBW)
title('Local Binarization');

subplot(1,2,1);
imshow(I)
title('Original Image');
%% Part2.2
I=imread('catalogue.bmp')
[X,Y]= size(I)
IBW=I
IBW=uint8(IBW)

for i=1:X
    for j=1:Y
        ML=meanLT(i,j,7,I,X,Y)
        SL=stddevLT(i,j,7,I,ML,X,Y)
        if SL>0
            T=ML*(1+0.15*((SL/128)-1))
        else
            T=ML*(1-0.15*((SL/128)-1))
        end
        if IBW(i,j)>T
            IBW(i,j)=255
        else
            IBW(i,j)=0   
        end
    end
end
subplot(1,2,2);
imshow(IBW)
title('Local Binarization');

subplot(1,2,1);
imshow(I)
title('Original Image');




I=imread('catalogue.bmp')
[X,Y]= size(I)
IBW=I
IBW=uint8(IBW)

for i=1:X
    for j=1:Y
        ML=meanLT(i,j,4,I,X,Y)
        SL=stddevLT(i,j,4,I,ML,X,Y)
        if SL>0
            T=ML*(1+0.2*((SL/128)-1))
        else
            T=ML*(1-0.2*((SL/128)-1))
        end
        if IBW(i,j)>T
            IBW(i,j)=255
        else
            IBW(i,j)=0   
        end
    end
end
subplot(1,2,2);
imshow(IBW)
title('Local Binarization');

subplot(1,2,1);
imshow(I)
title('Original Image');