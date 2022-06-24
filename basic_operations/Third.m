%% Part1
clearvars;
close all;
clc;

Pcircle=imread('..image\circle.bmp');
Psquare=imread('..image\square.bmp');

ConCircle=boolean(Pcircle);
ConSquare=boolean(Psquare);

subplot(1,2,1);
imshow(ConCircle);

subplot(1,2,2);
imshow(ConSquare);
%% Part2.1

not1=~ConCircle %NOT oparation
not2=~ConSquare

subplot(2,2,1);
imshow(ConCircle);
title("Orginal Circle");

subplot(2,2,2);
imshow(not1);
title("NOT Circle");

subplot(2,2,3);
imshow(ConSquare);
title("Orginal Square");

subplot(2,2,4);
imshow(not2);
title("NOT Square");
%% Part2.2
and=ConCircle&ConSquare; %AND operation
imshow(and);
%% Part2.3

or=ConCircle|ConSquare;%OR operation
imshow(or);
%% Part2.4

help xor
xor=xor(ConCircle,ConSquare);%XOR operation
imshow(xor);
