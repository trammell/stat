(define-module (chase))
(export erf)
(export erfc)
(export Phi)
(export avg)

(load-extension "cygguile-erf" "init_erf")   ; defines 'erf' function

; complementary error function
(define erfc
  (lambda (x) (- 1 (erf x))))

;;; see eg. http://en.wikipedia.org/wiki/Normal_distribution
(define Phi
  (lambda (x)
    (* 0.5
       (+ 1.0 (erf (/ x (sqrt 2)))))))

(define avg
  (lambda (lst)
    (/ (apply + lst) (length lst))))

; (define median
;   (lambda (vec) (    )))

; (define select
;   (lambda (k . vec)))

; function select(list[1..n], k)
;     for i from 1 to k
;         minIndex = i
;         minValue = list[i]
;         for j from i+1 to n
;             if list[j] < minValue
;                 minIndex = j
;                 minValue = list[j]
;         swap list[i] and list[minIndex]
;     return list[k]

