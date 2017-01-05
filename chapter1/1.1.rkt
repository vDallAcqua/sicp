#lang sicp
10 ; --> 10

(+ 5 3 4) ; --> 12

(- 9 1)(* 2 (- 4 6)) ; --> 8 --> -4

(define a 3) ; --> 3

(define b (+ a 1)) ; --> 4

(+ a b (* a b))  ; --> 19

(= a b) ; --> #f 

(if (and (> b a) (< b(* a b)))
    b
    a)  ; --> 4 (b)

(cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
(else 25)) ; --> 16 ((= b 4) is the true condition)

(+ 2 (if (> b a) b a)) ; --> 6

(* (cond ((> a b) a)
    ((< a b) b)
    (else -1))  ; --> 4
(+ a 1)) ; --> 16

