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

(define (odd? n)
  (not (= (remainder n 2) 0)))

(define (next-odd n)
  (if (odd? n) (+ n 2) (+ n 1)))

(define (continuos-prime n count)
  (cond ((= count 0) (display "are primes."))
        ((prime? (next-odd n))
         (display (next-odd n))
         (newline)
         (continuos-prime (next-odd n) (- count 1)))
        (else
         (continuos-prime (next-odd n) count))))