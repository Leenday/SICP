(define (make-interval a b) (cons a b))

(define (upper-bound i) (cdr i))

(define (lower-bound i) (car i))

(define (width i)
  (/ (abs (- (upper-bound i) (lower-bound i))) 2))

