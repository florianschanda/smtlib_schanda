(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv146 8) (_ bv1856512 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isSubnormal f) )
(assert (= ref result))
(check-sat)
