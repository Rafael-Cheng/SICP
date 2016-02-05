(define (_reverse l)
    (if (null? (cdr l))
        l
        (append (_reverse (cdr l)) (list (car l)))))

(_reverse (list 1 4 9 16 25))
