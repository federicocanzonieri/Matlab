

any([])
all([])


A=1:10;
all(A>5)
any(A>5)

A=1:0
all(A>5)

a=[]
isempty(a)


some_matrix=[1,2,3;4,5,6];
for some_col=some_matrix
    display(some_col)
end
% weird same counter
for x=1:10
    for x=1:10
        fprintf("%d,",x)
    end
    fprintf("\n")
end

other_row_vector=[4,3,5,1,2]

for any_name=other_row_vector
    display(any_name)
end

A=[1 2 3 4 5]
for x=A
    disp(x)
end
for x=1:5
    disp(x)
end
% char vect
for my_char='abcde'
    disp(my_char)
end


ch='abc'
m=3
for c=ch
    for k=1:m
        disp([c num2str(k) 'dio'])
    end
end

% Fibonacci
N=10
n=3
a1=0
a2=1

for j=1:N
    for k=1:n
        an=a1+a2
        a1=a2
        a2=an
    end
    disp(an)
end

N=12
gap=[1 2 3 4 6]
for j=gap
    for k=1:j:N
        fprintf('%d ',k)
    end
    fprintf('\n')
end

n=5
for k=1:n
    display(k)
end

for k=1:n
    disp(n-k+1:-1:1)
end


my_vector=[0,2,1,3,9]

for i=1:numel(my_vector)
    my_vector(i)=my_vector(i)+1
end

% vectorizerd
my_vector=my_vector+1;


p=Person('John','Smith','London')

v1=valueClass
v1.data=5;
v2=v1
v2.data=7
v1.data

h1=handleClass
h1.data=5
h2=h1
h2.data=7
h1.data

% member
m=Member('Adam','Woodcock','Manchester',20)



