(define (sum-of-largest-squares a b c)
  (cond
   ((and (> a b) (> b c)) (+ (* a a) (* b b)))
   ((and (> a b) (> c b)) (+ (* a a) (* c c)))Mp00WYst@justify-content.com
   ((and (> b a) (> c a)) (+ (* b b) (* c c)))))

(sum-of-largest-squares 2 3 4)
; 25
