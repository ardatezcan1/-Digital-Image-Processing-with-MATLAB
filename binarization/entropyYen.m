function Topt = entropyYen(obraz)

    [H x] = imhist(obraz);

    p = H / sum(H);

    P = cumsum(p);

    Hf = zeros(1,256);
    Hb = zeros(1,256);

    for T=1:1:256

        suma = 0;
        for i=1:1:T
            z = (p(i)/P(T))^2;
            
            if ( p(T) == 0 )
                z = Inf;
            end
            suma = suma + z;
        end
        Hf(T) = -1*log(suma);

        suma = 0;
        for i=T+1:1:256
            z = (p(i)/(1-P(T)))^2;
            
         
            if ( p(T) == 1 )
                z = Inf;
            end
            
            suma = suma + z;
        end
        Hb(T) = -1*log(suma);

    end

    HH = Hf + Hb;
    [v Topt] = max(HH);
   
    while ( v == Inf )
        HH(Topt) = -Inf;
        [v Topt] = max(HH);
    end
    
    Topt = Topt-1;
end