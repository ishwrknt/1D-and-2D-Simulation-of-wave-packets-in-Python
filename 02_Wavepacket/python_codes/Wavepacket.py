def wavepacket(fs,n,L):
#written by Dr. O.S.K.S. Sastri
#for understanding how to construct a wave-packet
#[-L,L] is the region of interest in which the wave-packet 
#is constructed
#n is the number of waves to be added
#fs is the fundamental spatial frequency whose harmonics are added
	x = linspace(-L,L,1000); 
#x is the discretised space variable on [-L,L]
	phi=0;  
#phi shall hold the sum of the series. Here it is initialised to 0
	am = 1; #All the amplitudes are set to 1.
	m = 1; #loop variable to keep track of number of terms added 
	while m <= n:
   		phi = phi + am*cos(2*pi*m*fs*x); #general term of the series
   		m = m + 1;                 #incrementing the loop variable
	plot(x,phi)

