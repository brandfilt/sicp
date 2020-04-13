(defn smallest-divisor [n]
  (find-divisor n 2))

(defn find-divisor [n test-divisor]
  (cond [(> (** test-divisor 2) n) n]
        [(divides? test-divisor n) test-divisor]
        [True (find-divisor n (+ test-divisor 1))]))

(defn divides? [a b]
  (= (% b a) 0))

(defn prime? [n]
  (= n (smallest-divisor n)))

(print (prime? 199))
; #t
(print (prime? 1999))
; #t
(print (prime? 19999))
; #f
