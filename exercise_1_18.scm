(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))

(define (double n) (* 2 n))

(define (multiply b n a)
    (cond ((= n 0) a)
          ((even? n) (multiply (double b) (halve n) a))
          (else (multiply b (- n 1) (+ a b)))))

(define (multiply-wrapper a b)
    (multiply a b 0))

(multiply-wrapper 2 2)
(multiply-wrapper 2 3)
(multiply-wrapper 2 10)

(multiply-wrapper 3 2)
(multiply-wrapper 3 3)
(multiply-wrapper 3 10)

(multiply-wrapper 10 10)
