10

(print "(+ 5 3 4)")
(print (+ 5 3 4))

(print "(- 9 1)")
(print (- 9 1))

(print "(/ 6 2)")
(print (/ 6 2))

(setv a 3)
(setv b (+ a 1))
(print "(+ a b (* a b))")
(print (+ a b (* a b)))

(print "(= a b)")
(print (= a b))


(print "(if (and (> b a) (< b (* a b)))
    b
    a)")

(print (if (and (> b a) (< b (* a b)))
    b
    a))

(print "(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))")

(print (cond [(= a 4) 6]
             [(= b 4) (+ 6 7 a)]
             [else 25]))

(print "
(+ 2 (if (> b a) b a))
(* (cond ((> b a) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
")

(print
  (* (cond [(> b a) a]
           [(< a b) b]
           [else -1])
     (+ a 1)))
