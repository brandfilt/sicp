(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (cuberoot x)
  (cube-iter 1.0 x))

(cuberoot 8)
