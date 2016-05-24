package de.csmath.math;

object Egcd {

    //
    // egcd(m,n) = (s,t,d) such that
    // d = gcd(m,n) and
    // sm + tn = d
    //
    def egcd(m: Int, n: Int) = egcdaux(1, 0, 0, 1, m, n)

    //
    // let a', b', a, b, m, n, c, d be integers such that
    //
    //    a'm + b'n = c   and
    //    am  + bn  = d
    //
    //              a' b' a  b  c  d
    // then egcdaux(1, 0, 0, 1, m, n) = (s,t,d) such that
    // d = gcd(m,n) and
    // sm + tn = d
    //
    private def egcdaux(a1: Int, b1: Int, a: Int, b: Int, c: Int, d: Int): (Int,Int,Int) = {
        val q = c / d
        val r = c % d
        if (r==0)
           (a,b,d)
        else egcdaux(a, b, a1 - q*a, b1 - q*b, d, r)
    }

}
