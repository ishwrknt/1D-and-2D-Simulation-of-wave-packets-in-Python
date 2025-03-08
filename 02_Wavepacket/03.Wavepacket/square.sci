function square(w,L)
    //written by Dr O.S.K.S. Sastri
    //w is the width of the single slit
    //L is the total width of the dark slide in which the single slit is etched
    dx = 0.01;     //0.01 is the spacing between the points on the discrete grid
    x = -L:dx:L; //spatial grid
    N=size(x,'*'); //N is the number of points chosen for sampling the slide
    m = w*N/L;     //m is the corresponding number of points for representation 					   //of the single slit
    a = zeros(1,N);//a is the array of zeros creating the no pass through region
    a(N/2-m/2:N/2+m/2)=1; //Here, the light pass through region is created by 							 //setting the m points in the middle of the slide to 1
	dk = 0.01;    
    k = (-N/2:(N-1)/2)*1/(dx*N);  //spatial frequency vector with spacing dk
    I = fftshift(abs(fft(a)));
    subplot(2,1,1)
    plot(x,a)
    subplot(2,1,2)
    plot(k,I)
endfunction
