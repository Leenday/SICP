(define (sqrt-iter prev-guess guess x)
    (if (good-enough? prev-guess guess x)
        guess
        (sqrt-iter guess
                   (improve guess x)
                   x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? prev-guess guess x)
    (< (abs (- guess prev-guess)) 0.00000000001)
)

(define (sqrt x)
    (sqrt-iter 0 1.0 x))

(sqrt 9.0)
(round (* 1000 (sqrt 4.0)))
(round (* 1000 (sqrt 0.04)))
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

(sqrt 1234567890123)
(sqrt 12345678901234)
(sqrt 0.00000000123)
(sqrt 0.00000000123456)
