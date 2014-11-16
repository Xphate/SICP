#lang scheme

(define (y-triangle x y)
  (cond ((= x 1) 1)
        ((= y 1) 1)
        ((= x y) 1)
        (else (+ (y-triangle x (- y 1))
                 (y-triangle (- x 1) (- y 1))))))