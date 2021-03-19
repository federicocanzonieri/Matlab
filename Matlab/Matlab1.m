
% See myvector
% See myIntegerDivision

% SET OPERATION
A=randi([0 10],1,5)
B=randi([-1 9],1,5)


[C,pos]=intersect(A,B)
% pos C==A(pos)

D=union(A,B)

E=setdiff(A,B)

D==union(D,C)

x=randi([-10 10],1,1)

a=ismember(A,x)
b=ismember(B,x)



% 
dbtype fit 1


fs = 500; %sampling frequency
dt = 1/fs; %time step
T=1; %total time window
t = -T/2:dt:T/2-dt; %time grids
df = 1/T; %freq step
Fmax = 1/2/dt; %freq window
f=-Fmax:df:Fmax-df; %freq grids, not used in our examples, could be used by plot(f, X)
%%
% Generate Gaussian curve
Bx = 10; A = sqrt(log(2))/(2*pi*Bx); %Characteristics of Gaussian curve
x = exp(-t.^2/2/A^2); %Create Gaussian Curve
%%
% Generate Analytical solution
Xan = A*sqrt(2*pi)*exp(-2*pi^2*f.^2*A^2);


Xfft = dt *fftshift(fft(x)); %FFT
Xfinal = dt * myfft(x); %Corrected FFT
hold on
plot(f,Xan);
plot(f,real(Xfft));
plot(f,real(Xfinal),'ro');
title('Comparison of Corrected and Uncorrected FFT');
legend('Analytical Solution','Uncorrected FFT','Corrected FFT');
xlabel('Frequency'); ylabel('Amplitude');
DT = max(f) - min(f);
xlim([-DT/4,DT/4]);



