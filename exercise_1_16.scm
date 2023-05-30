(define (even? n) (= (remainder n 2) 0))

(even? 100)
(even? 11)

;b - num
;n - power
;a - number of steps
;b^n = (b^n/2)^2 = (b^2)^n/2 if n%2 = 0
;b^n = b * b ^ (n - 1) if n%2 = 1
(define (fast-expt b n a)
    (cond ((= n 0) a)
          ((even? n) (fast-expt (square b) (/ n 2) a))
          (else (fast-expt b (- n 1) (* a b)))))

(define (expt-wrapper num pow)
    (fast-expt num pow 1))

(expt-wrapper 2 2)
(expt-wrapper 2 3)
(expt-wrapper 2 4)
(expt-wrapper 2 8)
(expt-wrapper 2 10)

(expt-wrapper 3 3)
(expt-wrapper 3 2)
(expt-wrapper 3 4)
(expt-wrapper 3 20)

(expt-wrapper 10 0)

(expt-wrapper 0 5)
