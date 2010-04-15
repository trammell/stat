; simple factorial
(define factorial
  (lambda (i)
    (if (< i 2) 1
      (* i (factorial (- i 1))))))

