(define (inc a) 
    (+ a 1))

(define (dec a) 
    (- a 1))

(define (plus a b)
    (display a) (newline)
    (if (= a 0)
    b
    (inc (plus (dec a) b))))

(plus 4 5)
