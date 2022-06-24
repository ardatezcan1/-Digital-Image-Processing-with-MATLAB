function LUT(image,reencoding)
load functionsLUT;
result=intlut(image,reencoding)

subplot(1,3,1)
plot(reencoding)
daspect([1 1 1])
title("LUT")


subplot(1,3,2)
imshow(image)
title("Input")


subplot(1,3,3)
imshow(result)
title("Output")
end

