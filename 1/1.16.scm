(define (square x)
		(* x x))
(define (halve x)
        (/ x 2))
(define (fast-expt x n)
		(expt-iter 1 x n))
(define (expt-iter a x n)
        (cond ((= n 0) a)
		      ((even? n) (expt-iter a 
					                (square x) 
									(halve n)))
			  (else (expt-iter (* a x) (square x) (halve (- n 1))))))

(fast-expt 2 10)
