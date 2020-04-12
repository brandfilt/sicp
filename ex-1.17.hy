(defn even [n]
  (= (% n 2) 0))

(defn double [x]
  (+ x x))

(defn halve [x]
  (/ x 2))

(defn * [a b]
  (cond [(= b 0) 0]
        [(even b) (double (* a (halve b)))]
        [True (+ a (* a (- b 1)))]))


(print (* 5 5))
(print (* 2 16))
