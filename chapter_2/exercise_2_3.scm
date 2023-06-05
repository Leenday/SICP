(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment a b) (cons a b))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (segment-length a)
    (sqrt (+ (square (- (x-point (end-segment a)) (x-point (start-segment a))))
             (square (- (y-point (end-segment a)) (y-point (start-segment a)))))))

(define (make-rectangle start-point h w)
    (let ((h-point (make-point (x-point start-point) (+ (y-point start-point) h)))
          (w-point (make-point (+ (x-point start-point) w) (y-point start-point))))
    (cons (make-segment start-point h-point) (make-segment start-point w-point))))

(define (hight-rectangle r) (segment-length (car r)))
(define (width-rectangle r) (segment-length (cdr r)))

(define (rectangle-perimeter a)
    (* 2 (+ (hight-rectangle a) (width-rectangle a))))

(define (rectangle-square a)
    (* (hight-rectangle a) (width-rectangle a)))

(define a (make-point 2 2))
(define r (make-rectangle a 5 8))

(rectangle-perimeter r)
(rectangle-square r)
