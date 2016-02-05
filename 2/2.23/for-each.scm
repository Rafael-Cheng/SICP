(define (_for-each p l)
    (cond ((null? l))
          (else (p (car l))
                (_for-each p (cdr l)))))

(_for-each (lambda (x) (newline) (display x))
    (list 57 321 88))

;the difference between if and cond
