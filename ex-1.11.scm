(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1))
                    (* 2 (f-recursive (- n 2)))
                    (* 3 (f-recursive (- n 3)))))))

(f-recursive 10)
