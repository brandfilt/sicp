(import [time [time]])
(import [random [randrange]])

(defn square [x]
  (* x x))

(defn expmod [base exp m]
  (cond [(= exp 0) 1]
        [(even? exp)
        (% (square (expmod base (/ exp 2) m))
                    m)]
        [True (% (* base (expmod base (- exp 1) m))
                          m)]))

(defn fermat-test [n]
  (defn try-it [a]
    (= (expmod a n n) a))
  (try-it (+ 1 (randrange (- n 1)))))

(defn fast-prime? [n times]
  (cond [(= times 0) True]
        [(fermat-test n) (fast-prime? n (- times 1))]
        [True False]))

(defn timed-prime-test [n]
  (print n)
  (start-prime-test n (time)))

(defn report-time [elapsed-time]
  (print " *** ")
  (print elapsed-time))

(defn start-prime-test [n start-time]
  (if (fast-prime? n 100)
      (report-time (- (time) start-time))))


(defn search-for-primes [first last]
  (defn search-iter [cur last]
    (if (<= cur last) (timed-prime-test cur))
    (if (<= cur last) (search-iter (+ cur 2) last)))
  (search-iter (if (even? first) (+ first 1) first)
               (if (even? last) (- last 1) last)))

(search-for-primes 1000 1019)
(search-for-primes 10000 10037)
(search-for-primes 100000 100043)
(search-for-primes 1000000 1000037)
