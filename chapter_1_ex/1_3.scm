;Define a procedute that takes three numbers as arguments and returns sum of the squares 
;of the largest two elements

(define (square x) 
	(* x x)
)

(define (sum_of_squares a b)
	(+ 
	   (square a)
	   (square b)
	)
)

(define (sum_of_largest_args_squared a b c)
	(cond 
		((and (< a b) (< a c)) (sum_of_squares b c) ) ;a is the least arg
		((and (< b a) (< b c)) (sum_of_squares a c) ) ;b is the least arg
		(else (sum_of_squares a b) ) ;either c is the least or at least two of the args are equal
	)
)

(square 5)
;25

(sum_of_squares 5 5)
;50

(sum_of_largest_args_squared 1 2 3)
;13

(sum_of_largest_args_squared 3 1 4)
;25

(sum_of_largest_args_squared 3 3 3)
;18

(sum_of_largest_args_squared 4 2 1)
;20