; Utility procedures for good-enough?:
; Finds the square of a given x
(define (square x) 
	(* x x)
)

; Finds the absolute value of a given x
(define (abs x) 
	(if (< x 0) (- x) x)
)

; good-enough?, as defined in the book:
(define (good-enough? guess x)
	(< (abs (- (square guess) x)) .001))



; The good-enough? test used in computing square roots will not be very effective in finding the square roots
;   of very small numbers. Also, in real computers, arithmitic operations are almost always performed
;   with limited preciscion. This makes our test inadequate for very small large numbers.

; Explain these statements, with examples showing how the test fails for very small and very large numbers.

; As x gets closer to 1, the square root of x requires exponententially more presicion. .001,
;   as an absolute value, will eventually fail to provide enough fidelity.

(good-enough? 1.0001 1.0001)

; This test passes, but obviously 1.0001 is not the square root of itself! 

; Meanwhile, the issue with large numbers is that even guesses getting very close are not 
;   going to pass good-enough?. We probably don't care about preciseness with such large numbers.
;   As the question describes, this is built into the archietecture of how floating-point numbers
;   are represented in IEEE in the first place, with a lot of precisness for smaller numbers and 
;   less for larger numbers. That might mean this test might never pass, even if it loops and loops
;   ad nauseum; the archietechure simply can't represent a .001 threshold when numbers are in the millions!

(good-enough? 550.025 302527.500625)


; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration
;   to the next and to stop when the change is a very small fraction from the guess. Design a square-root
;   procedure that uses this kind of end-test. Does it work better or worse for small and large numbers?

(define (good-enough? guess last_guess)
	(<
		(abs (- guess last_guess))  
		(* guess .001) 
	)
)



(define (sqrt guess last_guess x)
	(if (good-enough? guess last_guess)
		guess
		(sqrt (improve guess x) guess x)
	)
)

(define (improve guess x)
	(average 
		guess 
		(/ x guess)
	)
)

(define (average x y)
	(/ 
		(+ x y) 
		2
	)
)

(sqrt 1.0 100 100)
(sqrt 550 302527.500625 302527.500625)
(sqrt 1.0 1.01 1.001)


