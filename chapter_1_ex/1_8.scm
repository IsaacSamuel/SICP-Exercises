; Utility procedures for good-enough?:
; Finds the square of a given x
(define (square x) 
	(* x x)
)

; Finds the cube of a given x
(define (cube x) 
	(* x x x)
)

; Finds the absolute value of a given x
(define (abs x) 
	(if (< x 0) (- x) x)
)

; good-enough?, as defined in the book:
(define (good-enough? guess x)
	(< (abs (- (cube guess) x)) .001))


; Newton's method for cube roots is based on the fact that, if y is an approximation to the cube root of x,
;   then a better approximation is given by the value:

; ((x / y) ^ 2 + 2*y) / 3

; Use this formula to implement a cube-root procedure analogous to the square-root procedure.


(define (cube_root guess x)
	(if (good-enough? guess x)
		guess
		(cube_root (improve x guess) x)
	)
)


(define (improve x y) 
	(/
		(+ 
			(/ x (square y))
			(* 2.0 y)
		)
		3.0
	)
)



(cube_root 1 64)
