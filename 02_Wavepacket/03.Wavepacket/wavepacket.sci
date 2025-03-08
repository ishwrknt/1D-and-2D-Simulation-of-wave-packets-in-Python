function [x,y] = wavepacket(dk,n,l)
//by o s k s sastri
//for understanding how to construct a wave packet
//[-l,l] is the region of interest in which the wavepacket is constructed
//n is the number of waves to be added
//dk is the spacing between two spatial frequencies
x = -l:0.01:l; //x is the discretised space variable on [-l,l]
y=0;  //y shall hold the sum of the series Here it is initialised to 0
k1 = 0; //loop variable to keep track of number of terms added 
while k1 <= n
   ak1=1; //All the amplitudes are set to 1.
   y = y + ak1*cos(2*%pi*k1*dk*x); //general term of the series
   k1 = k1+1;                 //incrementing the loop variable
end
scf();
plot(x,y)
endfunction;
