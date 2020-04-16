(defn new-if [predicate then-clause else-clause]
  (cond [predicate then-clause]
        [True else-clause]))

(print (new-if (= 2 3) 0 5))
; 5

(print (new-if (= 1 1) 0 5))
; 0

(defn average [x y]
  (/ (+ x y) 2))

(defn square [x]
  (* x x))

(defn good-enough? [guess x]
  (< (abs (- (square guess) x)) 0.001))

(defn improve [guess x]
  (average guess (/ x guess)))

(defn sqrt-iter [guess x]
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(defn sqrt [x]
  (sqrt-iter 1.0 x))

(print (sqrt 9))
; Maximum recursion depth
