; Alyssa P. Hacker does't see why 'if' needs to be provided as a special form. "Why can't I just define it as
;   an ordinary procedure in terms of cond?" she asks. Alyssa's friend Eva Lu Ator claims this can indeed
;   be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

; Eva then demonstates te program for Alyssa:
(new-if (= 2 3) 0 5)
; 5

(new-if (= 1 1) 0 5)
; 0

;Delighted, Alyssa uses new-if to rewrite the square-root program:

;(define (sqrt-iter guess x)
;	new-if (good-enough? guess x)
;	guess
;	(square-iter (imporve guess x
;		x)))


; What happens when Alyssa attempts to use this to calculate the square roots? Explain.

; We're going to get trapped again in infine-recursion due to the same reason as in excersise 2.5.
;   Because new-if is a function, and not a special form, the interpreter will attempt to evaluate
;   its arguments before passing them. Its arguments include the recursive function, square-iter.

; This isn't a problem with using cond instead of if, per se, it's a problem with defining new-if
;   inside its own function.