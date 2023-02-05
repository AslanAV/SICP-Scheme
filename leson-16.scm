(define (double func)
  (lambda (x) (func (func x))))

(define (repeated func n)
  (define (iter x func n)
    (if (< n 1) x (iter (func x) func (- n 1)))
  )
  (lambda (x) (iter x func n))
)