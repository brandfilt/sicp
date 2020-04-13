(defn average [x y]
  (/ (+ x y) 2))

(defn cube [x]
  (* x x x))

(defn square [x]
  (* x x))

(defn good-enough? [guess x]
  (< (abs (- (cube guess) x)) 0.001))

(defn improve [guess x]
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(defn cube-iter [guess x]
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(defn cuberoot [x]
  (cube-iter 1.0 x))

(print (cuberoot 8))
; 2.000004911675504
