(defn pascal [row column]
  (if (or (= column 1) (= row column))
      1
      (+ (pascal (- row 1) (- column 1)) (pascal (- row 1) column))))


(print f"(pascal 1 1)")
(print (pascal 1 1))
(print f"(pascal 3 2)")
(print (pascal 3 2))
