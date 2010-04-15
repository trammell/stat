
(define assert
  (lambda (aa msg)
    (if (null? aa)
      #t
      (if (not (car aa))
        (error msg)
        (assert (cdr aa) msg)))))

