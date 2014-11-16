#lang scheme

(define (GCD a b)
  (cond ((> b a) (GCD b a))
        ((= b 0) a)
        (else (GCD (remainder a b) b))))