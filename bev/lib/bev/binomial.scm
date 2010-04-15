; binomial
(define binom
  (lambda (x n p)
    (* (combine n x)
       (expt p x)
       (expt (- 1 p) (- n x)))))

