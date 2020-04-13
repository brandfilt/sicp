(import [time [time]])

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

(defn timed-prime-test [n]
  (print n)
  (start-prime-test n (time)))

(defn start-prime-test [n start-time]
  (if (prime? n)
      (report-time (- (time) start-time))))

(defn report-time [elapsed-time]
  (print " *** ")
  (print elapsed-time))

(defn search-for-primes [first last]
  (defn search-iter [cur last]
    (if (<= cur last) (timed-prime-test cur))
    (if (<= cur last) (search-iter (+ cur 2) last)))
  (search-iter (if (even? first) (+ first 1) first)
               (if (even? last) (- last 1) last)))

(print "(search-for-primes 1000 1019)")
(print (search-for-primes 1000 1019))
(print "(search-for-primes 10000 10037)")
(print (search-for-primes 10000 10037))
(print "(search-for-primes 100000 100043)")
(print (search-for-primes 100000 100043))
(print "(search-for-primes 1000000 1000037)")
(print (search-for-primes 1000000 1000037))
