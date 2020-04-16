(import [__future__ [TailRec]])
(import [time [time]])

(defn smallest-divisor [n]
  (find-divisor n 2))

(defn next-value [a]
  (cond [(= a 2) 3]
        [True (+ a 2)]))

(defn find-divisor [n test-divisor]
  (cond [(> (** test-divisor 2) n) n]
        [(divides? test-divisor n) test-divisor]
        [True (find-divisor n (next-value test-divisor))]))

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

 (timed-prime-test 1009)
 (timed-prime-test 1013)
 (timed-prime-test 1019)
 (timed-prime-test 10007)
 (timed-prime-test 10009)
 (timed-prime-test 10037)
 (timed-prime-test 100003)
 (timed-prime-test 100019)
 (timed-prime-test 100043)
 (timed-prime-test 1000003)
 (timed-prime-test 1000033)
 (timed-prime-test 1000037)

; Maximum recursion depth
 (timed-prime-test 1000000007)
 (timed-prime-test 1000000009)
 (timed-prime-test 1000000021)
 (timed-prime-test 10000000019)
 (timed-prime-test 10000000033)
 (timed-prime-test 10000000061)
 (timed-prime-test 100000000003)
 (timed-prime-test 100000000019)
 (timed-prime-test 100000000057)
 (timed-prime-test 1000000000039)
 (timed-prime-test 1000000000061)
 (timed-prime-test 1000000000063)
