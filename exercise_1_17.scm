(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))

(define (double n) (* 2 n))

(define (multiply a b)
    (cond ((= b 0) 0)
          ((even? b) (double (multiply a (halve b))))
          (else (+ a (multiply a (- b 1))))))

(define (multiply-wrapper a b)
    (multiply a b))

(multiply-wrapper 2 2)
(multiply-wrapper 2 3)
(multiply-wrapper 2 10)

(multiply-wrapper 3 2)
(multiply-wrapper 3 3)
(multiply-wrapper 3 10)

(multiply-wrapper 10 10)
