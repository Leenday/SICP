(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder (square (expmod base (/ exp 2) m))
                              m))
           (else
            (remainder (* base (expmod base (- exp 1) m))
                       m))))

(define (fermat-test n)
    (define (try-it a)
      (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (even? a)
    (= (remainder a 2) 0))

(fermat-test 561)
(fermat-test 1105)
(fermat-test 1729)
(fermat-test 6601)

