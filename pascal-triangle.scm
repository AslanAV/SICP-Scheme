(define (pascal-triangle row cell)
  (cond
    ((= row cell) 1)
    ((= cell 1) 1)
    (else (+
        (pascal-triangle (- row 1) (- cell 1))
        (pascal-triangle (- row 1) cell)
      )
    )
  )
)