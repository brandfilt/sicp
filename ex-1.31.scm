(define (recursive-product term a next b)
  (if (> a b)
      1
      (* (term a)
         (recursive-product term (next a) next b))))

(define (iter-product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (inc n)
  (+ n 1))

(define (identity x)
  x)

(define (factorial n)
  (recursive-product identity 1 inc n))

(define (approx-pi n)
  (define (wallis x)
    (* (/ (* 2 x) (- (* 2 x) 1)) (/ (* 2 x) (+ (* 2 x) 1))))
  (* (iter-product wallis 1 inc n) 2.0))

(factorial 10)
(factorial 5)
(factorial 3)
(factorial 2)

(approx-pi 10000)
