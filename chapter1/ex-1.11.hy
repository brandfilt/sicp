(defn f-recursive [n]
  (cond [(< n 3) n]
        [True (+ (f-recursive (- n 1))
                 (* 2 (f-recursive (- n 2)))
                 (* 3 (f-recursive (- n 3))))]))

(print f"recursive {(f-recursive 10)}")

(defn f-iterative [n]
  (defn iter [a b c count]
    (if (= count 0)
        a
        (iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
  (iter 0 1 2 n))

(print f"iterative {(f-iterative 10)}")
