(define (timed_prime_test n)
    (newline)
    (display n))

(define (smallest_divisor n)
    (find_divisor n 2))

(define (square n)
    (* n n))

(define (find_divisor n test_divisor)
    (cond ((> (square test_divisor) n) n)
          ((is_divides test_divisor n) test_divisor)
          (else (find_divisor n (+ test_divisor 1)))))

(define (is_divides a b)
    (= (remainder b a) 0))

(define (is_prime n)
    (= n (smallest_divisor n)))

(define (is_even n)
    (= (remainder n 2) 0))

(define (search_for_primes n count)
    (cond ((= count 0) (display "\nfinish."))
          ((is_prime n)
            (timed_prime_test n)
            (search_for_primes (+ n 1) (- count 1)))
          (else (search_for_primes (+ n 1) count))))
    

(search_for_primes 1000 3)
(exit)