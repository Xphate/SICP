#lang scheme

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divid? n test-divisor) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divid? n test-visor)
  (= (remainder n test-visor) 0))

(define (small-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= (small-divisor n) n))

(define a (small-divisor 199))

(define b (small-divisor 1999))

(define c (small-divisor 19999))