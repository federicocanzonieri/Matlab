

B=round(randn(5)*10)

A=zeros(size(B))

for col=1:size(B,2)
    A(:,col)=B(:,col)-mean(B(:,col))
end

A=bsxfun(@minus,B,mean(B))

v=[1 2 3]
A=[8 1 6; 3 5 7; 4 9 2]

B=bsxfun(@plus,A,v)
B;


C=magic(3)+(1:3);

% prodotto puntuale
C=A.*B

% log masking
mask=[1 0 0; 0 1 0; 0 0 1]

A=[1 2 3; 4 5 6; 7 8 9]
B=A>4

C=[0 0 0; 0 0 0; 0 0 0]
C(B)=5

A(A>5)=A(A>5) -2

% sum , mean, prod & co

v=rand(10,1)
s=0
for ii=1:10
    s=s+v(ii)
end

s=sum(v)
A=rand(10,10)
% for col
m=mean(A,1) 
% for row
m=mean(A,2)

s=sum(A(:))




% get value of funct of two or more arg

x=-1.2:0.2:1.4
y=-2:0.25:3

for nx=1:length(x)
    for ny=1:length(y)
        f(nx,ny)=exp(-x(nx)^2-y(ny)^2)
    end
end

[x,y]=ndgrid(x,y)
f=exp(-x.^2-y.^2)
% surf(x,y,f)

surf(y,x,f)








