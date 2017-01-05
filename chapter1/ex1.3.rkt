; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

#lang sicp
(define (SumsSquareOfTheTwoGreater a b c)
  (cond ((and (< a b) (< a c)) (+ (sqrt b) (sqrt c)))
        ((and (< b a) (< b c)) (+ (sqrt a) (sqrt c)))
        (else (+ (sqrt a) (sqrt b)))))

(SumsSquareOfTheTwoGreater 1 4 9)  ; --> 5
(SumsSquareOfTheTwoGreater 4 1 9)  ; --> 5
(SumsSquareOfTheTwoGreater 9 4 1)  ; --> 5
