(define (make-rat n d)
    (if (< d 0) (make-rat (- n) (- d))
        (let ((g (gcd n d)))
            (cons (/ n g)
                  (/ d g)))))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
        (newline)
        (display (numer x))
        (display "/")
        (display (denom x)))

(define one-half (make-rat 1 2))
(print-rat one-half)

(define a (make-rat -2 -4))
(print-rat a)

(define b (make-rat 2 -4))
(print-rat b)

(define c (make-rat -2 4))
(print-rat c)

(define d (make-rat 14 -42))
(print-rat d)
