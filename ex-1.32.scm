(define (recur-accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (recur-accumulate combiner null-value term (next a) next b))))

(define (iter-accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (recur-sum term a next b)
  (recur-accumulate + 0 term a next b))

(define (recur-product term a next b)
  (recur-accumulate * 1 term a next b))

(define (iter-sum term a next b)
  (iter-accumulate + 0 term a next b))

(define (iter-product term a next b)
  (iter-accumulate * 1 term a next b))

(define (inc n)
  (+ n 1))

(define (identity x)
  x)


(recur-sum identity 0 inc 10)
(iter-sum identity 0 inc 10)

(recur-product identity 1 inc 10)
(iter-product identity 1 inc 10)
