; Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behaviour of the following procedure:

#lang sicp
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The function return the sum of a plus the absolute number of b
; The trick is that the if returns the operator + or - accordingly with the sign of b

(a-plus-abs-b 1 2)  ; --> 3
(a-plus-abs-b 1 -2) ; --> 3
