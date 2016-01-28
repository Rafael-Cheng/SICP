(define f0 0)
(define f1 1)
(define f2 2)

(define (f n)
    (cal n f2 f1 f0))


(define (cal n f2 f1 f0)
    (cond ((< n 3) n)
	      ((= n 3) (+ f2
                      (* 2 f1)
                      (* 3 f0)))
          ((cal (- n 1) (+ f2 (* 2 f1) (* 3 f0)) f2 f1))))

(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)
