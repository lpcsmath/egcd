--
-- egcd m n = (s,t,d) such that
-- d = gcd(m,n) = sm + tn
--
egcd :: Int -> Int -> (Int,Int,Int)
egcd = egcdaux 1 0 0 1

--
-- egcdaux 1 0 0 1 m n = (s,t,d) such that
-- d = gcd(m,n) = sm + tn
--
egcdaux :: Int -> Int -> Int -> Int -> Int -> Int -> (Int,Int,Int)
egcdaux a' b' a b c d =
   let
       q = div c d
       r = rem c d
   in
      case r of 0 -> (a,b,d)
                _ -> egcdaux a b (a' - q * a) (b' - q * b) d r
