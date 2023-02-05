(define (sum-int a b)
  (if (> a b) 0
      (+ a (sum-int (+a 1) b)))
)

(define (sum-cub a b)
  (if (> a b) 0
      (+ (cube a) (sum-cubes (+ a 1) b))
  )
)

(define (pi-sum a b)
  (if (> a b) 0
      (+ (/1.0 (* a (+a 2))) (pi-sum (+ 4 a) b))
  )
)

(define (sum term next b)
  (if (> a b) 0
    (+ (term a) (sum term (next a) next b))    
  )
)

(define (identity n) n)
(define sum-int a b
  (sum identity a inc b)
)

(define (inc x) (+ 1 x))

(define (sum-cubes a b))
  (sum cube a inc b)
)