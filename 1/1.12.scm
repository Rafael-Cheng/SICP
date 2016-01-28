(define (pascal row col)
	(if (or (= col 1) (= row col))
		1
		(+ (pascal (- row 1) 
		           (- col 1))
		   (pascal (- row 1)
		           col))))


(pascal 1 1)
(pascal 2 1)
(pascal 2 2)
(pascal 3 2)
(pascal 3 3)
