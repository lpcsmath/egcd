/// This function computes the extended euclid's algorithm.
///
/// egcd(m,n) = (s,t,d) such that
/// d = gcd(m,n) = sm + tn
///
/// # Examples
///
/// ```
/// use egcd::egcd;
/// let (s,t,d) = egcd(1769,551);
///
/// assert_eq!(s, 5);
/// assert_eq!(t,-16);
/// assert_eq!(d, 29);
/// ```
pub fn egcd (m: i32, n: i32) -> (i32,i32,i32) {
   let (mut c, mut d) = (m,n);
   let (mut a1, mut b1) = (1,0); // such that a1m + b1n = c
   let (mut a, mut b) = (0,1);   // such that am  + bn  = d

   let (mut q, mut r) = (c / d, c % d);
   while r != 0 {
      // (a1,b1,a,b) = (a,b,a1-q*a,b1-q*b)
      let mut t = a1;
      a1 = a;
      a = t - q*a;
      t = b1;
      b1 = b;
      b = t - q*b;
      c = d;
      d = r;
      q = c / d;
      r = c % d;
   }
   (a,b,d)
}
