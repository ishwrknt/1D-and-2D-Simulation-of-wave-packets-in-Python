from numpy.fft import fft,fft2, fftshift
from mpl_toolkits.mplot3d import Axes3D
def gaussian2D(w):
    #written by Dr O.S.K.S. Sastri
    #w is the width of the gaussian amplitude function
	n1 = linspace(-1,1,100);
	n2 = linspace(-1,1,100)
	[k1,k2] = meshgrid(n1,n2);
	a = exp(-k1**2/(2*w**2))* exp(-k2**2/(2*w**2));
	y = fftshift(abs(fft2(a)));
	#subplot(2,1,1)
	fig = figure(1)
	ax = fig.gca(projection='3d')
	surf = ax.plot_surface(k1,k2,a)
	#subplot(2,1,2)
	fig1  =figure(2) 
	ax = fig1.gca(projection='3d')
	surf = ax.plot_surface(k1,k2,y)


