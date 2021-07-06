(define (biggest_squares a b c)
	(cond ((> (+ a b) (+ b c)) (+ (* a a) (* b b)))
			 ((> (+ a c) (+ b c)) (+ (* a a) (* c c)))
			 ((> (+ b c) (+ a c)) (+ (* b b) (* c c))))
	)

(biggest_squares 1 2 3)
(biggest_squares 3 2 3)
