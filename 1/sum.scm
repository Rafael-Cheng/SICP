(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a) 
           (sum term (next a) next b))))

(define (sum-int a b)
    (define (identity x) x)
    (define (inc n) (+ n 1))
    (sum identity a inc b))
(sum-int 1 10)

(define (sum-cube a b)
    (define (cube x) (* x x x))
    (define (inc n) (+ n 1))
    (sum cube a inc b))
(sum-cube 1 10)

(define (pi-sum a b)
    (define (pi-term x) (/ 1.0 (* x (+ x 2))))
	(define (pi-next n) (+ n 4))
    (sum pi-term a pi-next b))
(* 8 (pi-sum 1 100000))
