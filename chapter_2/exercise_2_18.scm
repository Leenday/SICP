(define (reverse li)
  (if (null? (cdr li))
    (list (car li))
    (append (reverse (cdr li)) (list (car li)))))

(reverse (list 1 2 3 4 5 6 7));7 6 5 4 3 2 1
