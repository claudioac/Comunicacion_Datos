


Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector

x = zeros([1,L]);             %signal
x(1:(L/2)) = 1;

NFFT = 2^nextpow2(L);
X = fft(x,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);


plot(f,2*abs(X(1:NFFT/2+1)))

%eliminamos la mitad de las frecuencias mas altas
X(256:(3*256))=0;
plot(abs(ifft(X)));