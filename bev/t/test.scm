
; simple factorial
(define fact
  (lambda (i)
    (if (< i 2) 1
      (* i (fact (- i 1))))))

; P(n,r) = n! / (n-r)!
(define permute
  (lambda (n r)
    (/ (fact n) (fact (- n r)))))

(if (not (= 1 (permute 0 0))) (error "assert 0 0 failed"))
(if (not (= 120 (permute 5 5))) (error "assert failed"))
(if (not (= 11880 (permute 12 4))) (error "assert failed"))

; C(n,r) = n! / ((n-r)! * r!)
(define combine
  (lambda (n r)
    (/ (fact n) (* (fact (- n r)) (fact r)))))

(if (not (= 1 (combine 0 0))) (error "assert 0 0 failed"))
(if (not (= 1 (combine 5 5))) (error "assert failed"))
(if (not (= 495 (combine 12 4))) (error "assert failed"))

; binomial
(define binom
  (lambda (x n p)
    (* (combine n x)
       (expt p x)
       (expt (- 1 p) (- n x)))))

