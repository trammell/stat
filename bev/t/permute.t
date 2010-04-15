; vim: set filetype=lisp :

(load-from-path "bev/permute.scm")
(use-modules (tap writer))
(plan 3)

(is (permute 0 0) 1)
(is (permute 5 5) 120)
(is (permute 12 4) 11880)

