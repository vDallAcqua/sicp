; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
(if (= x 0)
    0
    y))

; then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter tat user normal-order evaluation? Explain your answer.
; (Assume that the evaluation rule for the special form 'if' is the same whether the interpreter is using normal or applicsative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)
;
;------------------------------------------------------------------
;
; Note: (p) is recursively defined
; applicative-order evaluation: --> infinite loop, the evaluation of (p) recall another evaluation of (p)
;    This is a tested result because the interpreter implementation use this type of evaluation.
;
; normal-order evaluation: 
;
;   (if (= 0 0)
;        0
;       (p p))   --> not evaluated
;
;   --> 0