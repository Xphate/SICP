#lang scheme

(define (gcd a b)
  (cond ((> b a) (gcd b a))
        ((= b 0) a)
        (else (gcd (remainder a b) b))))