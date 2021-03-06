(define (cbrt x)
    (define (cbrt-iter guess)
        (if (good-enough? guess)
            guess
            (cbrt-iter (improve guess))))
    (define (good-enough? guess)
        (< (abs (- (cube guess) x)) 0.001))
    (define (improve guess)
        (/ (+ (/ x
                 (square guess))
              (* 2 guess))
           3))
    (define (square i) 
        (* i i))
	(define (cube j) 
        (* j j j))
    (cbrt-iter 1.0))

(cbrt 27.0)
(cbrt 125.0)
