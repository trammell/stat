;;; vim: set filetype=lisp :

(load-from-path "bev/permute.scm")

(if (not (= 1 (permute 0 0))) (error "assert 0 0 failed"))
(if (not (= 120 (permute 5 5))) (error "assert failed"))
(if (not (= 11880 (permute 12 4))) (error "assert failed"))

