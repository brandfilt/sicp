(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (* b a)
  (define (iter acc b a)
    (cond ((= a 0) acc)
          ((even? a) (iter acc (double b) (halve a)))
          (else (iter (+ acc b) b (- a 1)))))
  (iter 0 b a))

(* 5 5)
(* 2 16)
