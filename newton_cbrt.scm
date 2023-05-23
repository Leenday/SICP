(define (cbrt-iter prev-guess guess x)
    (if (good-enough? prev-guess guess)
        guess
        (cbrt-iter guess
                   (improve guess x)
                   x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? prev-guess guess)
    (< (abs (/ (- guess prev-guess) guess)) 0.00000000001)))

(define (cbrt x)
    (cbrt-iter 0 1.0 x))

(cbrt 8.0)
(cbrt 1000.0)
(cbrt 1000000000.0)
(cbrt 0.008)
