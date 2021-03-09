#lang racket

(+ 2 42)

;;; Declare variable
(define pi2 3.14)

;;; Compound Procedure
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (f a) (sum-of-squares (+ a 1) (+ a 2)))

(sum-of-squares (+ 5 1) (+ 5 2))
(+ (square (+ 5 1)) (square (+ 5 2)))
(+ (* (+ 5 1) (+ 5 1)) (* (+ 5 2) (+ 5 2)))
(+ (* 6 6) (* 7 7))
(+ 36 49)

;;; Conditions
;;; (define (abs x)
;;;   (cond ((> x 0) x)
;;;         ((= x 0) 0)
;;;         ((< x 0) (- x))))

(define (abs x)
  (if (< x 0) (- x) x))

;;; Logical operators
;;; (define (>= x y)
;;;   (or (> x y) (= x y)))

(define (>= x y)
  (not (< x y)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average a b) (/ (+ a b) 2)) 

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))

(define (sqrt x)
  (sqrt-iter 1.0 x))