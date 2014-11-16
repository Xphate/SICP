#lang scheme

(define (divided? a b)
  (= (remainder a b) 0))

(define (next a)
  (if (= a 2) (+ a 1)
      (+ a 2)))

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divided? n test-divisor) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (smallest-divisor n)
  (find-divisor n 2))
