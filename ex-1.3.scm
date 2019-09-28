(define (sum-of-largest-squares a b c)
  (cond ((and (> a b) (> b c)) (+ (* a a) (* b b)))
        ((and (> a b) (> c b)) (+ (* a a) (* c c)))
        ((and (> b a) (> c a)) (+ (* b b) (* c c)))
        ((and (> b a) (> a c)) (+ (* b b) (* a a)))))

(sum-of-largest-squares 2 3 4)
; 25
