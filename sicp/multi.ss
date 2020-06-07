(define (is_even n)
    (= (remainder n 2) 0))

(define (double n)
    (* n 2))

(define (halve n)
    (/ n 2))

(define (* a b)
    (cond ((= b 0) 0)
          ((is_even b) (* (double a) (halve b)))
          (else (+ a (* a (- b 1))))))

(define (multi a b)
    (define (multi-iter a b result)
        (cond ((= b 0) result)
              ((is_even b) (multi-iter (double a) (halve b) result))
              (else (multi-iter (double a) (halve (- b 1)) (+ result a)))))
    (multi-iter a b 0))

(display (* 2 2))
(display "---------------------\n")
(display (multi 2 1))
(exit)