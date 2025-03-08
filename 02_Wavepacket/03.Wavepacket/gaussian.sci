function gaussian(w)
    //written by Dr O.S.K.S. Sastri
    //w is the width of the gaussian amplitude function
    k = -1:0.01:1;N=size(k,'*');
    a = exp(-k.^2/(2*w^2));
    x = (-N/2:(N-1)/2)*100/N;
    y = fftshift(abs(fft(a)));
    subplot(2,1,1)
    plot(k,a)
    subplot(2,1,2)
    plot(x,y)
endfunction
