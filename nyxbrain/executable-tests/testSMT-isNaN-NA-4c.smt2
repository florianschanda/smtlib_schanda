(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv63 8) (_ bv1507631 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isNaN f) )
(assert (= ref result))
(check-sat)
