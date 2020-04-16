(defn even [n]
  (= (% n 2) 0))

(defn double [x]
  (+ x x))

(defn halve [x]
  (/ x 2))

(defn * [a b]
  (defn iter [acc b a]
    (cond [(= a 0) acc]
          [(even? a) (iter acc (double b) (halve a))]
          [True (iter (+ acc b) b (- a 1))])))


(print (* 5 5))
; 25
(print (* 2 16))
; 32
