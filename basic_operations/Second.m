%% Part1.1

Plena=imread('..image\lena.bmp')
Pjet=imread('..image\jet.bmp')
subplot(1,2,1)
imshow(Plena)
subplot(1,2,2)
imshow(Pjet)
%% Part1.2

help imadd % To add the images
add=imadd(Pjet,Plena)
imshow(add)
% It is not that satisfactory
%% Part1.3

% To get better results try this
PlenaUint=uint16(Plena);
PjetUint=uint16(Pjet);
addUnit=imadd(PjetUint,PlenaUint);
imshow(addUnit,[]);
%% Part2

help imlincomb; %lineer combination
PLin1=imlincomb(1,Plena,1,Pjet,'uint16');
PLin2=imlincomb(5,Plena,1,Pjet,'uint16');
PLin3=imlincomb(1,Plena,5,Pjet,'uint16');
PLin4=imlincomb(2,Plena,4,Pjet,'uint16');
PLin5=imlincomb(5,Plena,3,Pjet,'uint16');

subplot(1,5,1)
imshow(PLin1,[])
title("PLin1")

subplot(1,5,2)
imshow(PLin2,[])
title("PLin2")

subplot(1,5,3)
imshow(PLin3,[])
title("PLin3")

subplot(1,5,4)
imshow(PLin4,[])
title("PLin4")

subplot(1,5,5)
imshow(PLin5,[])
title("PLin5")
%% Part3.1

help imsubtract %subtract two pictures

sub=imsubtract(Plena,Pjet)
subplot(1,2,1)
imshow(sub)

sub2=imsubtract(Pjet,Plena)
subplot(1,2,2)
imshow(sub2)
%% Part3.2

Plena16=int16(Plena);%subtracting pictures better with uint16, like above done with add
Pjet16=int16(Pjet);

sub3=imsubtract(Plena16,Pjet16);
subplot(1,2,1);
imshow(sub3,[]);

sub3=imsubtract(Pjet16,Plena16);
subplot(1,2,2);
imshow(sub3,[]);
%Part3.3
help imabsdiff

absdiff1=imabsdiff(Plena,Pjet);
subplot(1,2,1);
imshow(absdiff1);

absdiff2=imabsdiff(Pjet,Plena);
subplot(1,2,2);
imshow(absdiff2);
%% Part4.1

help immultiply % multiply two pictures
PlenaInt=int16(Plena);
PjetInt=int16(Pjet);
multi=immultiply(PlenaInt,PjetInt);
imshow(multi);
%% Part4.2

MultConst=immultiply(Plena,0.5);% multiply one pic. with 0.5
subplot(1,2,1);
imshow(Plena);
title("Normal");

subplot(1,2,2);
imshow(MultConst);
title("Multiple with 0.5");
%% Part4.3

mask=imread('..image\circle.bmp'); % using circle image like mask
mask=boolean(mask);
ConstMask=immultiply(MultConst,mask);
imshow(ConstMask);

%% Part5

help imcomplement; % like negative (white to black - black to white)
imcomp=imcomplement(Pjet);
subplot(1,2,1);
imshow(imcomp);
title("Normal");

subplot(1,2,2);
imshow(Pjet);
title("Negation");
