(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv1 1) (_ bv125 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv0 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)
