fun egcdaux (a',b',a,b,c,d) = 
    let
        val q = c div d
        val r = c mod d
    in
        if r=0
           then (a,b,d)
           else egcdaux (a,b,a' - q*a, b' - q*b,d,r) 
end;

fun egcd (m,n) = egcdaux (1,0,0,1,m,n);

