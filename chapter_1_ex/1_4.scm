; Observe that our model of evaluation allows for combinations whose operations are themselves
;   compound expressions. Use this observation to describe the behavior of the following procedure.

(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b)
)

; We'd predict that if b is greater than zero, it adds a and b, and if it is less than zero,
;   it subtracts b from a. AKA, it does exactly what it says on the tin: adds a + |b|.

(a-plus-abs-b 1 -2)
;3

(a-plus-abs-b 1 2)
;3

(a-plus-abs-b 1 0)
;1