x=[1:5;6:10]'
x(3,2)=NaN

plot(x)


x=linspace(-2,2,10)
y1=x.^2
y2=2*x.^2
y3=4*x.^2

figure;
plot(x,y1,x,y2,'--',x,y3,'-.');
grid minor;
title("Quadratic fuc");
xlabel('x');
ylabel('f(x)')
legend('f(x)=x^2','f(x)=2x^2','f(x)=4x^2','Location','North')


c_fin = [0,0];
[X,Y] = meshgrid(1:0.1:10,1:0.1:10);
figure; hold on;
for i = 1 : 6
 Z(:,:,i) = i * (sin(X) + cos(Y))*100;
 ax(i) = subplot(3,2,i); hold on; grid on;
 surf(X, Y, Z(:,:,i));
 view(-26,30);
 colormap('jet');
 ca = caxis;
 c_fin = [min(c_fin(1),ca(1)), max(c_fin(2),ca(2))];
end
%%you can stop here to see how it looks before we color-manipulate
c = colorbar('eastoutside');
c.Label.String = 'Units';
set(c, 'Position', [0.9, 0.11, 0.03, 0.815]); %%you may want to play with these values
pause(2); %%need this to allow the last image to resize itself before changing its axes
for i = 1 : 6
 pos=get(ax(i), 'Position');
 axes(ax(i));
 set(ax(i), 'Position', [pos(1) pos(2) 0.85*pos(3) pos(4)]);
 set(ax(i),'Clim', c_fin); %%this is where the magic happens
end




