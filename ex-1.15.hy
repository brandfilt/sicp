(defn cube [x]
  (* x x x))

(defn p [x]
  (- (* 3 x) (* 4 (cube x))))

(defn sine [angle]
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(print (sine 12.15))
(print (p (sine 4.05)))
(print (p (p (sine 1.35))))
(print (p (p (p (sine 0.45)))))
(print (p (p (p (p (sine 0.15))))))
(print (p (p (p (p (p (sine 0.05)))))))
(print (p (p (p (p (p 0.05))))))
