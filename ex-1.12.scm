(define (pascal row column)
  (if (or(= column 1) (= row column))
      1
      (+ (pascal (- row 1) (- column 1)) (pascal (- row 1) column))))


(pascal 1 1)
; 1
(pascal 3 2)
; 2
