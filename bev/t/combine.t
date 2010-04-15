; vim: set filetype=lisp :

(load-from-path "bev/combine.scm")
(use-modules (tap writer))
(plan 3)

(is (combine 0 0) 1)
(is (combine 5 5) 1)
(is (combine 12 4) 495)

