; C(n,r) = n! / ((n-r)! * r!)
(define combine
  (lambda (n r)
    (/ (fact n) (* (fact (- n r)) (fact r)))))

; (if (not (= 1 (combine 0 0))) (error "assert 0 0 failed"))
; (if (not (= 1 (combine 5 5))) (error "assert failed"))
; (if (not (= 495 (combine 12 4))) (error "assert failed"))
