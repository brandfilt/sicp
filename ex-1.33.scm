(define (filter-accumulate combiner null-value term a next b filter)
  (cond ((> a b) null-value)
        ((filter a)
         (combiner (term a)
                   (filter-accumulate combiner null-value term (next a) next b filter)))
        (#t (filter-accumulate combiner null-value term (next a) next b filter))))


(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (next a)
  (cond ((= a 2) 3)
  (else (+ a 2))))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (inc n)
  (+ n 1))

(define (identity x)
  x)

(define (square x)
  (* x x))

(define (sum-of-prime-squares a b)
  (filter-accumulate + 0 square a inc b prime?))


(sum-of-prime-squares 0 10)

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


(define (product-of-ints-prime-to-n n)
  (define (gcd-is-one x)
    (= 1 (gcd x n)))
  (filter-accumulate * 1 identity 1 inc n gcd-is-one))

(product-of-ints-prime-to-n 10)
