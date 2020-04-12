(defn even [n]
  (= (% n 2) 0))

(defn square [x]
  (* x x))

(defn iter-expt [b n a]
  (cond [(= n 0) a]
        [(even n) (iter-expt (square b) (/ n 2) a)]
        [True (iter-expt b (- n 1) (* a b))]))

(defn expt [b n]
  (iter-expt b n 1))

(print (expt 2 16))
