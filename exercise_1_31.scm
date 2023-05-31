(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result))))
    (iter a 1))

(define (product-recurcive term a next b)
    (if (> a b)
        1
        (* (term a) (product-recurcive term (next a) next b))))

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (double-inc n) (+ n 2))

(define (identity x) x)

(define (product-cubes a b)
    (product cube a inc b))

(define (factorial x)
    (product identity 1 inc x))

(product cube 1 inc 10)
(product-recurcive cube 1 inc 10)
(product-recurcive identity 1 inc 5)
(factorial 5)

(define (pi n)
    (/
        (* 2.0 (product square 4.0 double-inc n))
        (product square 3.0 double-inc n)))

(pi 10.0)
