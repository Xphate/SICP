;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (add-two-big a b c)
  (cond ((and (< a b) (< a c)) (+ b c))
        ((and (< b c) (< b a)) (+ a c))
        ((and (< c a) (< c b)) (+ a b))))
