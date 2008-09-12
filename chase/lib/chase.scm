(define-module (chase))
(export erf)
(export erfc)
(export Phi)

(load-extension "cygguile-erf" "init_erf")   ; defines 'erf' function

; complementary error function
(define erfc
  (lambda (x) (- 1 (erf x))))

;;; see eg. http://en.wikipedia.org/wiki/Normal_distribution
(define Phi
  (lambda (x)
    (* 0.5
       (+ 1.0 (erf (/ x (sqrt 2)))))))

