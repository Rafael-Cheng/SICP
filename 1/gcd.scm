(define (_gcd a b)
        (if (= b 0)
            a
			(_gcd b (remainder a b))))

(_gcd 206 40)
