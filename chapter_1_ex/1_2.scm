;Translate the following expression into prefix form:
;(5 + 4 + (2 - (3 - (6 + .8)))) / (3 * (6-2) * (2-7))

;  9    + (2 - (3 - 6.8))       / (3 *   4   *  -5 )
;  9    + (2 - -3.8)            /  -60
;  9    + 5.8
;  14.8                         /  -60
;  14.8 / -60
;  -2.4666...
; Expected output: -2.46666



( 
	/

	(+ 5 4 
		(- 2 
			(- 3 
				(+ 6 .8)
			)
		)
	)   
    (* 3 
     	(- 6 2) 
     	(- 2 7)
    )
)

;Expected output correct

