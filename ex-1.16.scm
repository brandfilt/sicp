(define (even? n)
  (= (remainder n 2) 0))

(define (square x) (* x x))

(define (expt b n)
  (iter-expt b n 1))

(define (iter-expt b n a)
  (cond ((= n 0) a)
        ((even? n) (iter-expt (square b) (/ n 2) a))
        (else (iter-expt b (- n 1) (* a b)))))

(fast-expt 2 16)
(expt 2 16)
