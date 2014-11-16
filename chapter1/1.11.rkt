#lang scheme

(define (f-iter f1 f2 f3 n)
  (cond ((= n 1) f1)
        ((= n 2) f2)
        ((= n 3) f3)
        (else (f-iter f2 f3 (+ f3 (* 2 f2) (* 3 f1)) (- n 1)))))

(define (f n)
  (f-iter 1 2 3 n))