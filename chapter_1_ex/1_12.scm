; The following pattern of numbers is called Pascal's triangle:

;      1 
;    1   1 
;   1  2  1 
; 1  3  3  1
;1 4  6  4  1

; The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of
;   the two numbers above it. Weite a procedure that computes elements of Pascal's triangle by means
;   of a recursive process.


(define (compute-pascal-element level-of-pyramid element-number)
	(if (or (= element-number 1) (= element-number level-of-pyramid) )
		1  ;If it is an element on the left or right, just return 1

		(+ ;Add to the element to the top left and the top right
			(compute-pascal-element (- level-of-pyramid 1) (- element-number 1))
			(compute-pascal-element (- level-of-pyramid 1) element-number)
		)
	)
)

(compute-pascal-element 1 1)
; Expected value: 1

(compute-pascal-element 3 2)
; Expected value: 3


(compute-pascal-element 5 3)
; Expected value: 6