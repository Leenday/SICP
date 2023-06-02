(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))

(define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
              (* (denom x) (denom y))))

(define (div-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (denom x) (numer y))))

(define (equal-rat? x y)
    (= (* (numer x) (denom y))
       (* (numer y) (denom x))))

(define (make-rat n d)
    (let ((g (gcd n d)))
        (if (< d 0)
            (cond ((< n 0) (cons (/ (* -1 n) g) (/ (* -1 d) g)))
                  (else (cons (/ n (* -1 n)) (/ (* -1 d) g))))
            (cons (/ n g) (/ d g)))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
    (newline)
    (display (car x))
    (display "/")
    (display (cdr x)))

(define one-third (make-rat 1 3))

(define minus-one-third (make-rat 1 -3))

(print-rat (add-rat one-third one-third))

(print-rat (mul-rat minus-one-third one-third))

(print-rat (mul-rat one-third minus-one-third))
