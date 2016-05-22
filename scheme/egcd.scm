; (egcd m n) = (s t d) such that
; d = gcd(m,n) and
; d = sm + tn
(define (egcd m n)
    (define (egcdaux a1 b1 a b c d)
        ; a1m + b1n = c and
        ; am + bn = d
        (let ((q (quotient c d))
              (r (modulo c d)))
             (if (= r 0)
                 (list a b d)
                 (egcdaux a b (- a1 (* q a)) (- b1 (* q b)) d r))))
     (egcdaux 1 0 0 1 m n))
;(egcd 1769 551)
; expected (5 -16 29)
