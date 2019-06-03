; Using the results of exercises 1.16 and 1.17, devise a procedure that generates an iterative process for multiplying
;   two integers in terms of adding, doubling, and halving, and uses a logrithmic number of steps.


(define (double x)
	(+ x x)
)

(define (half x)
	(/ x 2)
)

(define (even? n)
	(= (modulo n 2) 0)
)


(define (multiply a b)
	(multiply-iter a b a 1)
)

(define	(multiply-iter a b accumulator count)
		(cond 
			;Special cases for 0 and 1
			((or (= a 0) (= b 0))
				0)
			((= b 1)
				a)
			((= a 1)
				b)

			((= b (double count))
				(+ accumulator accumulator)
			)

			((= count b)
				accumulator
			)

			((> b (double count))
				(multiply-iter a (- b count) accumulator 1)
			)

			((< (double count) b)
				(multiply-iter a b (double accumulator) (double count))
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