(lambda (x) (+ x 4))

(define (pi-sum a b)
  (sum (
        ((lambda (x) (/ 1.0 (* x (+x 2)))) a)
        ((lambda (x) (+ x 4)) b)
      )
  )  
)

(define (plus4 a) (+ a 4))

(define plus4 (lambda (x) (+ x 4)))
