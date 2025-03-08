a = [0.109818,0.405771,2.22766];
d = [0.444635,0.53528,0.154329];
function [AH,AHe,aH,aHe]=slater(a,d)
    zHe = 2.093;
    zH = 1.24;
    aHe = zHe.^2*a;
    aH = zH.^2*a;
    AH = (2*aH/%pi).^(3/4).*d;
    AHe = (2*aHe/%pi).^(3/4).*d;
endfunction

function [S] = overlap(R)
    [AH,AHe,aH,aHe]=slater(a,d);
    amplusan = [aH(1)+aHe;aH(2)+aHe;aH(3)+aHe];
    ammulan  = aH'*aHe;
    dmn = AH'*AHe;
    K = 0.25*%pi^0.5*amplusan.^(-1.5)*exp(-R^2*ammulan./amplusan).*dmn;
    S12 = sum(K);
    S = S12;
endfunction
