(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv0 8) (_ bv4194305 23)))
(define-fun g () Float32 (fp (_ bv1 1) (_ bv255 8) (_ bv4194304 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.lt f g) )
(assert (= ref result))
(check-sat)
