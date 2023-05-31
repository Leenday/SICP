(define (filtered-accumulate combiner null-value term a next b predicate)
    (define (iter a result)
        (cond ((> a b) result)
              ((predicate a) (iter (next a) (combiner (term a) result)))
              (else (iter (next a) result))))
    (iter a null-value))

(define (inc n) (+ n 1))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (divides? a b)
    (= (remainder b a) 0))

(define (identity x) x)

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

(define (sum-square-primes a b)
    (filtered-accumulate + 0 square 1 inc 10 prime?))

(sum-square-primes 1 10)
(filtered-accumulate * 1 square 1 inc 3 odd?)
(filtered-accumulate + 0 identity 1 inc 10 odd?)

