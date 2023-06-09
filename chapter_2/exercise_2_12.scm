(define (make-interval a b) (cons a b))

(define (upper-bound i) (cdr i))

(define (lower-bound i) (car i))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (make-center-percent avg inf)
  (make-interval (- avg (* (/ avg 100) inf))
                 (+ avg (* (/ avg 100) inf))))

(define (percent interval)
  (let ((diff (/ (- (upper-bound interval) (lower-bound interval)) 2)))
    (/ (* diff 100) (center interval))))

(define i (make-center-percent 6.8 10))
(define i2 (make-center-percent 4 25))
(define i3 (make-center-percent 3.5 4))
(percent i) ;10
(percent i2) ;25
(percent i3) 

