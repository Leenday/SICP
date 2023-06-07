(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define (add-1 zero)
  (lambda (f) (lambda (x) (f ((zero f) x)))))

;apply body of zero
(define (add-1 zero)
  (lambda (f) 
    (lambda (x) 
      (f ((lambda (f) 
            (lambda (x) x) f) x)))))

;pass f. f procedure doing nothing, because its zero.
(define (add-1 zero)
  (lambda (f) 
    (lambda (x) 
      (f ((lambda (x) x) x)))))

;(lambda x) returns x, so it can be simplified
(define (add-1 zero)
  (lambda (f) 
    (lambda (x) 
      (f (x)))))

;if it adds one to zero, so we have 1 as a result.
(define one
  (lambda (f) 
    (lambda (x) 
      (f (x)))))

;next step is define two. Like 2 was added to zero, 1 can be added to one.
(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

;apply one procedure body to n.
(define (add-1 one)
  (lambda (f)
    (lambda (x)
      (f ((one f) x)))))

;apply body of one.

(define (add-1 one)
  (lambda (f)
    (lambda (x)
      (f ((lambda (f)
            (lambda (x)
              (f (x))) f) x)))))

;simplify
(define (add-1 one)
  (lambda (f)
    (lambda (x)
      (f (f x)))))

;two
(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

;add church
(define (add-church m n)
   (lambda (f) (lambda (x) ((m f) ((n f) x)))))
