img=imread("download.jpg")
size(img)


mirrored=img(:,end:-1:1,:);
imshow(mirrored)


ft=fftshift(fft2(image))

[x y ~]=size(ft)
D=20

mask=fspecial('disk',D)==0
mask=imresize(padarray(mask,[floor((x/2)-D) floor((y/2)-D)],1,'both'), [x y]);

masked_ft=ft.*mask;

filtered_image=ifft2(ifftshift(masked_ft),'symmetric');







