; The exponentiation algorims in this section are based on performing exponentiation by means of repeated multiplication.
;   In a similar way, one can perform integer multiplation by means of repeated addiotion. The following multiplication
;   procedure (in which it is assumed that our language can only add, not multiply) is analogous to the expt procedure:

(define (* a b)
	(if (= b 0)
		0
		(+ a (* a * (- b 1))))
)

; This algorithm takes a number of steps that is linear in b. Now, suppose we include, together with addition, operations
;   double, which doubles an integer, and half, which divides an (even) integer by two. Using these, design a 
;   multiplication procedure analogous to fast expt that uses a logarithmic number of steps.


;(define (fast-expt b n)
;	(cond ((= n 0) 1)
;		((even? n) square (fast-expt b (/ n 2)))
;		(else (* b fast0expt b (- n 1)))
;	)
;)

(define (double x)
	(+ x x)
)

(define (half x)
	(/ x 2)
)

(define (even? n)
	(= (modulo n 2) 0)
)

; Okay, let's think:
; a * b = y
; 2ab = 2y

; y = xb
; y = (2x)(b/2)





(define (multiply a b)
	(cond 
		;Special cases for 0 and 1
		((or (= a 0) (= b 0))
			0)
		((= b 1)
			a)
		((= a 1)
			b)

		((even? b) 
			(multiply (double a) (half b))
		)

		((not (even? b))
			(+ a
				(multiply (double a) (half (- b 1)))
			)
		)
	)
)

; TESTS:
(multiply 2 0)
; Expected value: 0

(multiply 2 1)
; Expected value: 2

(multiply 2 3)
; Expected value: 6

(multiply 2 4)
; Expected value: 8

(multiply 10 99)
; Expected value: 990

(multiply 5 11)
; Expected value: 55
