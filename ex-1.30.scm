(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (inc n) (+ n 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (integrate f a b n)
  (define h (/ (- b a) n))
  (define (s k)
    (define y (f (+ a (* k h))))
    (if (or (= k 0) (= k n))
        (* 1 y)
        (if (even? k)
            (* 2 y)
            (* 4 y))))
  (* (/ h 3) (sum s 0 inc n)))

(define (cube x) (* x x x))

(integrate cube 0 1 100)
(integrate cube 0 1 1000)
