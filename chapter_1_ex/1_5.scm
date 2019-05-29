; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using
;  applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
	(if (= x 0)
	0
	y)
)

; Then he evaluates the expression:

(test 0 (p))

; Which behavior will Ben observe with an interpreter that uses applicative-order evaluation?

; In applicative-order evaluation, the operators and operands are first evaluated and then the procedure
;  applied to the resulting arguments. Because (p) is a recurisve function, calling only itself with 
;  no base conditon, we'd expect this in applicative-order evalution for the function to get caught in
;  an infinite loop as soon as line 6 is called, because it tries to evaluate y before evaluating the body
;  of the function.


; Which behavior will he observe with normal-order evaluation?

; In normal-order evaluation, the expression is expanded fully until it contains only primitives, after
;   it is executed. It dives right into the body of the test function without 'thinking' about the fact
;   that p was passed as a function--it will evaluate it if and when it needs to. It never needs to,
;   because x is indeed equal to 0, meaning that the function would return 0 successfully without getting
;   caught in an infinite recursive loop.

; Because when run this program never returns, LISP does, apparently, operate on applicative-order rules.