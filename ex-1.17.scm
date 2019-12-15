(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (fast-mult b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-mult (double b) (halve n) a))
        (else (fast-mult b (- n 1) (+ a b)))))

(define (mult a b)
  (fast-mult a b 0))

(mult 5 5)
(mult 2 16)
