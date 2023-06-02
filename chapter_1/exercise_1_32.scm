(define (accumulate combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner (term a) result))))
    (iter a null-value))

(define (accumulate-recurcive combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate-recurcive combiner null-value term (next a) next b))))
 
(define (identity x) x)

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (factorial x)
    (accumulate * 1 identity 1 inc x))

(define (factorial-recurcive x)
    (accumulate-recurcive * 1 identity 1 inc x))

(define (sum-cubes a b)
    (accumulate + 0 cube a inc b))

(define (sum-cubes-recurcive a b)
    (accumulate-recurcive + 0 cube a inc b))

(factorial 5)
(factorial-recurcive 5)
(sum-cubes 1 10)
(sum-cubes-recurvive 1 10)
