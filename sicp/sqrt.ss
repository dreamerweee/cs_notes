(define (sqrt_iter guess x)
    (if (is_good_guess2 guess x)
        guess
        (sqrt_iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average a b)
    (/ (+ a b) 2))

(define (is_good_guess guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (is_good_guess2 guess x)
    (define next_guess (improve guess x))
    (< (/ (abs (- next_guess guess)) guess) 0.00001))

(define (abs a)
    (if (< a 0)
        (- a)
        a))

(define (square a)
    (* a a))

(define (sqrt x)
    (sqrt_iter 1.0 x))

(define (new_if pre thc elc)
    (cond (pre thc)
          (else elc)))

(display (sqrt 2))


(exit)