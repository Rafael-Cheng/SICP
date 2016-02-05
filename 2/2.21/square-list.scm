(define (square-list items)
    (if (null? items)
        ()
        (cons ((lambda (x) (* x x)) (car items))
              (square-list (cdr items)))))

(define (_square-list items)
    (map (lambda (x) (* x x)) items))

(square-list (list 1 2 3 4))
(_square-list (list 1 2 3 4))
