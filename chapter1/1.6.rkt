#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (good-enough? guess x)
  (< (abs (- x (* guess guess))) 0.001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2.0))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))