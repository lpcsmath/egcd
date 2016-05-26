
function egcd(m,n) {
    var a1 = 1;
    var b1 = 0;
    var a  = 0;
    var b  = 1;
    var c  = m;
    var d  = n;
    var q = Math.floor(c/d);
    var r = c % d;
    // such that
    //             a1 m + b2 n = c
    //                 am + bn = d
    // (a1 - qa)m + (b1 - qb)n = r
    while (r > 0) {
        var t = a1;
        a1 = a;
        a = t - q*a; // a1 - qa
        t = b1;
        b1 = b;
        b = t - q*b; // b1 - qb
        c = d;
        d = r;
        q = Math.floor(c/d);
        r = c % d;
    }
    return [a,b,d];
}
