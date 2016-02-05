(define (same-parity x . w)
    (define (select x l)
        (if (null? l)
            l
            (let ((hd (car l))) 
                 (if (or (and (even? x) (even? hd)) (and (odd? x) (odd? hd)))
                    (append (list x) (select hd (cdr l)))
                     (select x (cdr l))))))
    (select x (append w (list x)))) ;to form a list whose last element is the x

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
