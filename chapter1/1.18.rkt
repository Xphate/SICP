#lang scheme

(define (even? n) (= (remainder n 2) 0))

(define (odd? n) (not (= (remainder n 2) 0)))

(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (times-iter b count a)
  (cond ((= count 0) a)
        ((even? count) (times-iter (double b) (halve count) a))
        ((odd? count) (times-iter b (- count 1) (+ a b)))))

(define (times b count)
  (times-iter b count 0))

