(define (scale-list-items items factor)
  (if (null? items)
    '()
    (cons (* (car items) factor) (scale-list-items (cdr items) factor))))

(scale-list-items (list 1 2 3 4 5 6) 10)
