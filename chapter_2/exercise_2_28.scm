(define (fringe items)
  (cond ((not (pair? items)) (list items))
        ((null? (cdr items)) (fringe (car items)))
        (else (append (fringe (car items)) (fringe (cdr items))))))

(define x (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list x x))
