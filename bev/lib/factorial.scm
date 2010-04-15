; simple factorial
(define fact
  (lambda (i)
    (if (< i 2) 1
      (* i (fact (- i 1))))))

