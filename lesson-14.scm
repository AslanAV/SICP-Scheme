(define (search f neg-p pos-p)
  (let ((mid-p average(neg-p pos-p)))
    (if (close-enough? neg-p pos-p)
      mid-p
      (let ((test-value (f mid-p)))
        (cond ((positive? test-value) (search f neg-p mid-p))
              ((negative? test-value) (search f mid-p pos-p))
              (else mid-p)
        )
      )
    )
  )  
)


(define (close-enough? x y)
  (< (ab (- x y)) 0.001)  
)

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b))
        )
    (cond ((and (negative? (a-value)) (positive? (b-value)))
              (search f a b))
          ((and (negative? (b-value)) (positive? (a-value))) 
              (search f b a))
          (else (error "Error! " a b))
    )
  
  )  
)

sin x  = p

(half-interval-method sin 2.0 4.0)