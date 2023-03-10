(define tolerance 0.00001)

(define fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (-v1 v2)) tolerance))
  (define (try guess)
    let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next)))
  (try firt-guess)

  (define (average-damp f)
    (lambda (x) (average x f(x))))

  ((average-damp square) 10)