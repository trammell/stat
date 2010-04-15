; C(n,r) = n! / ((n-r)! * r!)

(load "factorial.scm")

(define combine
  (lambda (n r)
    (/ (factorial n) (* (factorial (- n r)) (factorial r)))))

