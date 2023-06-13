(define (my-for-each proc items)
  (proc (car items))
  (if (null? (cdr items))
    #t
    (my-for-each proc (cdr items))))

(my-for-each (lambda (x) (newline) (display x))
             (list 57 321 88))
