% Matrici


M=magic(3)

% Access specifing row and column
M(2,3)
% Access specifing row and column_vector
M(2,[1,2,3])
% Same as previous
M(2,1:3)
M(2,:)
M(2,2:end)
% multiple access
M([2,3],[1,3])
M(2:3,1:3)

% Linear indexing (column order)
M(1)
M(2)
M(3)
M(4)
% 
M(2:4)
M(:)
M([1,2;3,4])

r=3
c=2
idx=r+(c-1)*size(M,1)


% Logical Indexing

M>5
M(M>5)

% Keep the shape of matrix
M(~(M>5))=NaN

for elem=1:numel(M)
    if M(elem)>5
        M(elem)=M(elem)-2;
    end
end
M

idx=M>5;
M(idx)=M(idx)-2
M

% shorter

M(M>5)=M(M>5)-2
M

M3=rand(3,3,3)

M3(:,:,2)

% Linear indexing
M3(size(M,1)*size(M,2)+1)

M=reshape(1:24,[2,3,4])
M(1,1)
M(1,10)
M(1,:)
M(:,:)

% 
M([1,2],[1,3])
M

A=rand(20)
A(1:10,11:end)

% 
M
idx=sub2ind(size(M),2,2,2)
idx
M(idx)

% 
M([1,1,1,2,2,2])
M([1,1:end],[1:end,end])

%  anonymous variable

f=@sin
f(pi/2)
f(pi)

%anonymous 
f=@(x) sin(x)+cos(x).^2
f(3)
f(1:3)
f(5:8)

%anonymous mult
f=@(x,y,z) x.^2+y.^2+z.^2
f(2,3,4)
f(2:3,2:3,2:3)


% parameter
c=2
f=@(x) c*x
f(3)

c=3
f(3)

% worksapce

x=3
f=@(x)x+1
f(5)
% x untouched
x 

f=@(x)x^2
y=HandleDemo(f,10)
y
tt=HandleDemo(@sin,-5)

% tic toc

A=rand(50)

tic
meanA=mean(A)
size(A)
result=zeros(size(A))
for j=1:size(A,1)
    result(j,:)=A(j,:)-meanA
end

toc
clear result 

tic
result=bsxfun(@minus,A,mean(A))
toc



% Matrix,  array
% row
v=[1,2,3,4]
v=[1 2 3 4]

% column
v=[1;2;3;4]
% 2 row 4 column
M=[1 2 3 4; 5 6 7 8]


% Transpote matrix by ' .' ' operator
M.'

% multidimensional
arr=ones(5,2,4,3)

arr=cat(3,[1 2 3; 4 5 6],[7 8 9; 0 1 2])

arr=reshape(1:120,[5 4 3 2])


A=[1,-2,3.14,4/5,5^6;pi,inf,7/0,nan,log(0)]

s=['Matlab','is','fun']
s

% whos
whos

C={A;s}
whos C

C{1}
C{2}


[x,y]=C{1:2}


% display
disp("hello world")




% types
a=123
b=[1 2 3];
c='123'

% float single
a=1.23
b=single(a)

a=int32(100)
b=int8(260)

c=int16(456)
c=logical(1)

% struct
field1='first'
field2='second'
value1=[1 2 3 4 5]
value2='sometxt'

s=struct(field1,value1,field2,value2)
s.first
s.(field1)
display(s.('first'))

Age=[15 25 44]
Height=[111 101 120]
Name={'mike','ada','gecko'}
T=table(Name,Age,Height)

% table

a=categorical({'a','b','c'})


% %  CHAPTER 4 32 

whos 

