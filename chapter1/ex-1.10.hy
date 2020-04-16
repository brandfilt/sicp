(defn A [x y]
  (cond [(= y 0) 0]
        [(= x 0) (* 2 y)]
        [(= y 1) 2]
        [True (A (- x 1)
                 (A x (- y 1)))]))

(print "(A 1 10)")
(print (A 1 10))
(print "(A 2 4)")
(print (A 2 4))
(print "(A 3 3)")
(print (A 3 3))

(defn f [n]
  (A 0 n))

(defn g [n]
  (A 1 n))

(defn h [n]
  (A 2 n))
