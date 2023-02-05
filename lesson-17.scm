(define (deriv g)
  (lambda (x) 
    (/ (- g (+ x dx)) (g x)) dx)))

(deifne dx 0.00001)

(define (cube x) (* x x x))

((deriv cube) 5) ; 75.0000123

(define (newton-transformation g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x)) 1.0))