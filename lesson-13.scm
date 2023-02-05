(define (f x y)
  (define (f-helper a b)
    (+ (* x (squqre a))
      (* y b)
      (* a b)
    )
  )
  (f-helper (+ 1 (* x y)) (- 1 y))
)

(define (f x y)
  (
    (lambda (a b)
      (+ (* x (squqre a))
        (* y b)
        (* a b)
      )
    ) 
    (+ 1 (* x y)) (- 1 y)
  )
)

(define (f x y)
  (let  (
        (a (+ 1 (* x y)))
        (b (- 1 y))
        )
        (+
          (* x (square a))
          (* y b)
          (* a b)
        )
  )
)

x = 5
(+
  (let ((x 3))
    (+ x (* x 10))    
  )
 x ; x = 5
) ; 38

x = 2

(let ((x 3) (y (+ x 2)))
  (* x y)) ; output 12