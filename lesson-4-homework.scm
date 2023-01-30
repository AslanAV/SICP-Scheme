(display "hello world")
(newline)

(define (+ a b)
   (if (= a 0)
   b
   (inc (+ (dec a) b))))

(+ 2 3)