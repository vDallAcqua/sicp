; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

#lang sicp
(define (square x) (* x x))
(define (SumsSquareOfTheTwoGreater a b c)
  (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
        ((and (< b a) (< b c)) (+ (square a) (square c)))
        (else (+ (square a) (square b)))))

; Sample
(SumsSquareOfTheTwoGreater 1 4 9)  ; --> 97
(SumsSquareOfTheTwoGreater 4 1 9)  ; --> 97
(SumsSquareOfTheTwoGreater 9 4 1)  ; --> 97
