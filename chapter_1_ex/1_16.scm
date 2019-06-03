; Design a procedure that evolves an iterative exponetiation process that uses successive squaring and uses a logarithmic
;   number of steps, as does fast-expt. (Hint: using the observation that (b^n/2)^2 = (b^2)^n/2, keep, along with the
;   exponent n and the base b, an additional state variable a, and define the state transformation in such a way that the
;   a*b^n is unchanged from state to state. At the beginning of the process a is taken to be 1, and the answer is given by
;   the value of a at the end of the process. In general, the technique of defining an invariant quantity that remains unchanged
;   from state to state is a powerful way to think about the design of iterative algorithms.


(define (exp b n)
	(exp-iter b n b 1)
)

(define (exp-iter b n a count)
	(cond 
		((= n 0) 
			1 )
		((= count n) 
			b )
		((= (* count 2) n) 
			(* a a))
		((> n (* count 2))
			(exp-iter b (- n count) a 1))
		(else (exp-iter b n (* a a) (* count 2)))
	)
)


; TESTS:

(exp 1 24)
; expected value 1

(exp 2 0)
; Expected value 1

(exp 2 1)
; Expected value 2

(exp 2 2)
; Expected value 4

(exp 2 3)
; Expected value 8

(exp 2 4)
; Expected value 16

(exp 2 10)
; Expected value 1024

(exp 3 3)
; Expected value 27




