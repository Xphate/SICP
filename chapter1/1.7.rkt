#lang scheme

(define (good-enough? guess x)
  (< (/ (abs (- x (* guess guess))) x) 0.001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2.0))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))