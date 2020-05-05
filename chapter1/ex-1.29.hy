(defn sum [term a next b]
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(defn inc [n]
    (+ n 1))

(defn even? [n]
    (= (% n 2) 0))

(defn integrate [f a b n]
    (defn h [] (/ (- b a) n))
    (defn s [k]
        (defn y [] (f (+ a (* k (h)))))
        (if (or (= k 0) (= k n))
            (* 1 (y))
            (if (even? k)
                (* 2 (y))
                (* 4 (y)))))
    (* (/ (h) 3) (sum s 0 inc n)))

(defn cube [x]
    (* x x x))

(print (integrate cube 0 1 100))
;0.24999999999999992 