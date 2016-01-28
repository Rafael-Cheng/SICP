(define (bigTwo x y z)
        (cond ((and (< x y) (< x z)) (+ y z))
              ((and (< y x) (< y z)) (+ x z))
              (else (+ x y))))

(bigTwo 1 2 3)
(bigTwo 3 2 1)
(bigTwo 2 3 1)
