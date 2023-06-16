(define (make-mobile left right)
  (list left right))

(define (make-branch size structure)
  (list size structure))

;a)
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

;b)
(define (is-mobile mobile)
  (pair? (car mobile)))

(define (is-branch branch)
  (not (pair? (car branch))))

(define (total-weight mobile)
  (cond ((not (pair? mobile)) mobile)
        ((not (is-mobile mobile)) (total-weight (branch-structure mobile)))
        (else (+ (total-weight (left-branch mobile)) (total-weight (right-branch mobile))))))
;c)
(define (torque mobile)
  (cond ((is-mobile mobile) (- (torque (left-branch mobile)) (torque (right-branch mobile))))
        ((is-branch mobile) (* (branch-length mobile) (total-weight (branch-structure mobile))))))

(define (is-balanced mobile)
  (= (torque mobile) 0))


(define a2 (make-mobile (make-branch 2 3) (make-branch 2 3)))
(define a (make-branch 5 50))
(define b (make-branch 5 50))
(define mobile (make-mobile a b))
(define c (make-branch 6 mobile))
(define mobile2 (make-mobile a c))

(define branch1 (left-branch mobile2))
(define branch2 (right-branch mobile2))
(define d (make-mobile (make-branch 10 a2) (make-branch 12 5)))
(branch-length branch1)
(branch-length branch2)
(branch-structure branch1)
(branch-structure branch2)

(total-weight mobile2)
(total-weight mobile)
(total-weight a2)

(torque mobile)
(torque mobile2)

(is-balanced mobile)
(is-balanced mobile2)
(is-balanced d)
