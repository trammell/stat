; poisson
(define poisson
  (lambda (x mu)
    (/
      (* (expt mu x) (exp (- x)))
      (fact x))))

