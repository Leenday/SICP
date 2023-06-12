(define (last-pair li)
  (if (null? (cdr li))
    (car li)
    (last-pair (cdr li))))

(last-pair (list 23 72 149 34)); 34
(last-pair (list 1 2 3 4)); 4
