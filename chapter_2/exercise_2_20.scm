(define (same-parity . a)
  (define (same-parity-iter li1 li2)
    (if (null? li2)
      li1
      (if (have-same-parity? (car li1) (car li2))
        (same-parity-iter (append li1 (list (car li2))) (cdr li2))
        (same-parity-iter li1 (cdr li2)))))
  (same-parity-iter (list (car a)) (cdr a)))
        

(define (have-same-parity? a b)
  (or (both-odd? a b) (both-even? a b)))

(define (both-odd? a b)
  (and (odd? a) (odd? b)))

(define (both-even? a b)
  (and (even? a) (even? b)))

(same-parity 1 2 3 4 5 6 7)

(both-odd? 3 4)
(both-odd? 1 3)
(both-even? 2 3)
(both-even? 2 4)
