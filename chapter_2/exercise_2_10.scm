(define (make-interval a b) (cons a b))

(define (upper-bound i) (cdr i))

(define (lower-bound i) (car i))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (if (or (and (<= (lower-bound y) 0) (>= (upper-bound y) 0))
          (and (<= (upper-bound y) 0) (>= (lower-bound y) 0)))
    (error "division by zero")
  (let ((divisor-interval (make-interval (/ 1.0 (upper-bound y))
                                         (/ 1.0 (lower-bound y)))))
    (mul-interval x divisor-interval))))

(define i1 (make-interval 1 2))
(define i2 (make-interval -3.0 5))
(div-interval i1 i2)
                
