(define (_cons x y)
    (lambda (m) (m x y)))
(define (_car z)
    (z (lambda (p q) p)))
(define (_cdr z)
    (z (lambda (p q) q)))

(define a (_cons 1 2))
(_car a)
(_cdr a)

;http://stackoverflow.com/questions/21769348/use-of-lambda-for-cons-car-cdr-definition-in-sicp
