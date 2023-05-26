(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
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
          ((prime? num) ((search-for-primes (+ num 2) (+ nums-count 1))))
          (else (search-for-primes (+ num 2) nums-count))))
    

;(timed-prime-test 3571)
;(search-for-primes 1000 0)
;(search-for-primes 10000 0)
;(search-for-primes 100000 0)
;(search-for-primes 1000000 0)
(search-for-primes 10000000000 0)
