close all
clear all

lena=imread("download.jpg")
lena=rgb2gray(lena)
imshow(lena)

lena_1=bitget(lena,1)
lena_2=bitget(lena,2)
lena_3=bitget(lena,3)
lena_4=bitget(lena,4) 
lena_5=bitget(lena,5) 
lena_6=bitget(lena,6)
lena_7=bitget(lena,7)
lena_8=bitget(lena,8)

show_bitplanes(lena)

lenanew_1=bitget(lena,6)

lena_new=lenanew_1+2*lena_2+4*lena_3+8*lena_4+16*lena_5+32*lena_6+64*lena_7+128*lena_8;
imshow(lena_new,[])

show_bitplanes(lena_new)





