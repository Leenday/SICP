(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ (term a) result))))
    (iter a 0))

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (identity x) x)

(define (sum-cubes a b)
    (sum cube a inc b))

(define (check-equal? a b)
    (= a b))

(check-equal? (sum cube 0 inc 2) 9)
(check-equal? (sum cube 1 inc 10) 3025)
(check-equal? (sum identity 1 inc 10) 55)
