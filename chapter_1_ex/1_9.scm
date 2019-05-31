; Each of the following two procedures defines a method for adding two poitive integers in terms of the procedures
;   inc, which increments its argument by 1, and dec, which devrements its argument by 1.


; Process A:
(define (+ a b)
	(if (= a 0)
		b
	(inc (+ (dec a) b)))
)


; Process B:
(define (+ a b)
	(if (= a 0)
		b
		(+ (dec a) (inc b)))
)


; Using the substitution model, illustrate the process generated by each procedure in evaluating (+ 4 5).
;   Are these processes iterative, or recursive?

; Process A

; (+ 4 5)
; (inc (+ 3 5) )
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc (5)))))
; (inc (inc (inc (6))))
; (inc (inc (7)))
; (inc (8))
; 9

; Clearly, process A is recursive--it expands into a chain of operations, deferring evaluation until a base condition
;   is met.

; Process B

; (+ 4 5)
; (+ (3)(6))
; (+ (2)(7))
; (+ (1)(6))
; (+ (0)(7))
; (7)

; While this function does call itself, it is using tail recursion, and is actually an iterative process. Compating it
;   to Process A, we can see it doesn't "expand outwards"--its state is kept its parameters, subtly, in the form of the
;   first parameter that acts as a counter of sorts.
