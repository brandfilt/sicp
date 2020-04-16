(defn p [] (p))

(defn test [x y]
  (if (= x 0)
      0
      y))

(print (test 0 (p)))
