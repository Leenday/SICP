(define (deep-reverse items)
  (if (pair? items)
    (append (deep-reverse (cdr items)) (list (deep-reverse (car items))))
    items))

(define x (list (list 1 2) (list 3 4)))
(define y (list (list 1 2) (list 3 4) (list 5 6)))
(define a (list (list 1 (list 1 2)) (list 3 (list 3 4)) (list 5 6)))
(define b (list 1 2 (list 3 4) 5 (list 6 (list 7 8) 9) 10))


(deep-reverse x)
(deep-reverse y)
(deep-reverse a)
(deep-reverse b)
;(deep-reverse '(1 2 (3 4) 5 (6 (7 8) 9) 10))
;their
;1 ]=> (deep-reverse '(1 2 (3 4) 5 (6 (7 8) 9) 10))
;Value 16: (10 (9 (8 7) 6) 5 (4 3) 2 1)

;mine
;1 ]=> (deep-reverse b)
;Value 16: (10 (9 (8 7) 6) 5 (4 3) 2 1)
