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



; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration
;   to the next and to stop when the change is a very small fraction from the guess. Design a square-root
;   procedure that uses this kind of end-test. Does it work better or worse for small and large numbers?