(define (_cons x y)
    (define (dispatch m)
        (cond ((= 0 m) x)
              ((= 1 m) y)))
    dispatch)
(define (_car z) (z 0))
(define (_cdr z) (z 1))

(define p (_cons 1 2))
p
(_car p)
(_cdr p)

(define q (cons 3 4))
q
