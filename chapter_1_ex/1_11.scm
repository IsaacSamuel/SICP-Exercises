; A function 'f' is defined by the rule that f(n) = n if n < 3 and f(n) = f(n-1) + 2f(n-2) + 3f(n-3)
;   if n >= 3. Write a procedure the computes f by a recursive process, and write an iterative version as well.


;Recursive
(define (f-of-n n)
	(if (< n 3) 
		n
		(+ (f-of-n (- n 1)) (* (f-of-n (- n 2)) 2) (* (f-of-n (- n 3)) 3))
	)
)

(f-of-n 3)
; 2 + 2*1 + 0
; Expected value = 4

(f-of-n 4)
; f-of-n(3) + 2*2 + 3*1
; 4 + 4 + 3
; Expected value = 11


(define (f-of-n n)
	(f-of-n-iter 2 1 0 n)
)

(define (f-of-n-iter a b c count)
	(if (< count 3)
       a
       (f-of-n-iter (+ a (* 2 b) (* 3 c))
               a
               b
               (- count 1)))
)

; c = b
; b = a
; a = a + 2b + 3c

; So f-of-n(3)
	;f-of-n-iter(2 1 0 3)
	;f-of-n-iter(4 2 1 2)
	; 4

; So f-of-n(4)
	;f-of-n-iter(2 1 0 4)
	;f-of-n-iter(4 2 1 3)
	;f-of-n-iter(11 3 2 2)
	; 11

; This took an absurd amount of time. Was it worth it, you ask?
; ...Was it? (crying-emoji)

(f-of-n 3)
; Expected value = 4

(f-of-n 4)
; Expected value = 11




