#lang scheme

(define (even? n)
  (= (remainder n 2) 0))

(define (odd? n)
  (not (= (remainder n 2) 0)))

(define (expr-iter b count a)
  (cond ((= count 0) a)
        ((even? count) (expr-iter (* b b) (/ count 2) a))
        ((odd? count) (expr-iter b (- count 1) (* b a)))))

(define (expr b count)
  (expr-iter b count 1))