(define (cons x y)
    (lambda (m) (m x y)))

(define (car p)
    (p (lambda (x y) x)))

(define (cdr p)
    (p (lambda (x y) y)))

;just messing around
(define (sum p)
    (p (lambda (x y) (+ x y))))
