; b в степени n

(define (expt b n)
  if (= n 0) 1
    (* b (expt b (-n 1))))

(define (expt b n) exp-iter b n 1))
(define (exp-iter b  cointer prod)
  (if (= counter 1) prod
      (exp-iter b (- counter 1) (* prod b))))

(define (fast-exp b n)
  (cond (
          ((= n 0) 1)
          ((even? n) (square (fast-exp b (/ 2 n))))
          (else (* b (fast-exp b (- n 1))))
        )
  )
)