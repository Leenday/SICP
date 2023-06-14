(define (length items)
  (newline)
  (display items)
  (if (null? items)
    0
    (+ 1 (length (cdr items)))))

(define x (cons (list 1 2) (list 3 4)))

(length x)

(length (list x x))
