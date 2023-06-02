(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (fast-prime? n 10)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
    (display "*** ")
    (display elapsed-time))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
    (= (remainder b a) 0))

(define (even? a)
    (= (remainder a 2) 0))

(define (search-for-primes num nums-count)
    (timed-prime-test num) 
    (cond ((= nums-count 3) (display "Done!"))
          ((even? num) (search-for-primes (+ num 1) nums-count))
          ((fast-prime? num 10) ((search-for-primes (+ num 2) (+ nums-count 1))))
          (else (search-for-primes (+ num 2) nums-count))))
    
(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder (square (expmod base (/ exp 2) m))
                              m))
           (else
            (remainder (* base (expmod base (- exp 1) m))
                       m))))

(define (fermat-test n)
    (define (try-it a)
      (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0) true)
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else false)))

;(timed-prime-test 3571)
;(search-for-primes 1000 0)
;(search-for-primes 10000 0)
;(search-for-primes 100000 0)
;(search-for-primes 1000000 0)
;(search-for-primes 10000000000 0)
(search-for-primes 1000000000000 0)
