from numpy.fft import fft,fftshift
import matplotlib.pyplot as plt
def rectangular(w):
    #written by Dr O.S.K.S. Sastri
    #w is the width of the rectangular amplitude function
    #RoI is chosen as interval [-1,1]
    k = linspace(-1,1,100) #Discretisation of variable k in spatial frequency domain
    N = len(k); #Number of points corresponding to width of RoI, here 2 units
    M = round(w*N/2);#Number of points corresponding to width w
    A = zeros(N);  #A contains an array of N zeros  
    A[int(N/2-M/2):int(N/2+M/2)] = 1/sqrt(w); #
    x =linspace(-int((N/2)*2*pi*100/N),int(((N-1)/2)*2*pi*100/N),100); #corresponding x-values in position space
    phi = fftshift(abs(fft(A)));
    subplot(2,1,1)
    plt.xlabel("k")
    plt.ylabel("a(k)")
    plt.title("Amplitude function")
    plt.plot(k,A)
    plt.tight_layout(pad=3.0)
    subplot(2,1,2)
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("Sinc wave-packet")
    plt.plot(x,phi)



