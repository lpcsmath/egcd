egcd :: Int -> Int -> (Int,Int,Int)
egcd m n = egcdaux 1 0 0 1 m n

egcdaux :: Int -> Int -> Int -> Int -> Int -> Int -> (Int,Int,Int)
egcdaux a' b' a b c d =
   let
       q = div c d
       r = rem c d
   in
      case r of 0 -> (a,b,d)
                _ -> egcdaux a b (a' - q * a) (b' - q * b) d r
