(define (f-recurcive n)
    (cond ((< n 3) n)
          (else (+ (f-recurcive(- n 1)) (* 2 (f-recurcive(- n 2)))  (* 3(f-recurcive(- n 3)))))))

(define (f-iter n)
    (ff n 2 1 0))

(define (ff n a b c)
    (if (= n 0)
        c
        (ff (- n 1) (+ a (* 2 b) (* 3 c)) a b)))

(f-recurcive 3)
(f-iter 3)
(f-recurcive 4)
(f-iter 4)
(f-recurcive 5)
(f-iter 5)
(f-recurcive 6)
(f-iter 6)
