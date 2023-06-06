(define (power x y)
    (cond ((= y 1) x)
          ((< y 1) 1)
          (else (* x (power x (- y 1))))))

(define (cons a b)
  (* (power 2 a) (power 3 b)))
    
(define (car x)
  (define (car-iter x count)
  (if (= 0 (remainder x 2))
      (car-iter (/ x 2) (+ 1 count))
      count))
  (car-iter x 0))

(define (cdr x)
  (define (cdr-iter x count)
  (if (= 0 (remainder x 3))
      (cdr-iter (/ x 3) (+ 1 count))
      count))
  (cdr-iter x 0))

