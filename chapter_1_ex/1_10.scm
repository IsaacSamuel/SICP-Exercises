; The following procedure computes a mathematical function called Ackermann's function:

(define (A x y)
	(cond ((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1)
			(A x (- y 1)))
		)
	)
)

; What are the values of the following expressions?

(A 1 10)
; 1024

(A 2 4)
; 65536

(A 3 3)
; 65536


(define (f n) (A 0 n))
; 2 * n for all ns.

(define (g n) (A 1 n))
; for n = 1: 2
; for n > 1: 2^n

(define (h n) (A 2 n))


(define (k n) (* 5 n n))
;5n^2

; Consider the above procedures.

; Give consise mathematical definitions for the functions computed by the procedures f, g, and h
;   for positive integer values of n. For example, (k n) computes 5n^2.

; FLAGGED