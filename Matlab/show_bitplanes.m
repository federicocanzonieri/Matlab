function plots= show_bitplanes(img)

subplot(4,2,1), imshow(bitget(img,1), []), title('Primo piano di bit');
subplot(4,2,2), imshow(bitget(img,2), []), title('Secondo piano di bit');
subplot(4,2,3), imshow(bitget(img,3), []), title('Terzo piano di bit');
subplot(4,2,4), imshow(bitget(img,4), []), title('Quarto piano di bit');
subplot(4,2,5), imshow(bitget(img,5), []), title('Quinto piano di bit');
subplot(4,2,6), imshow(bitget(img,6), []), title('Sesto piano di bit');
subplot(4,2,7), imshow(bitget(img,7), []), title('Settimo piano di bit');
subplot(4,2,8), imshow(bitget(img,8), []), title('Ottavo piano di bit');