(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv4194305 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv4788187 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)
