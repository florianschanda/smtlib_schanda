(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv229 8) (_ bv4194304 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isNormal f) )
(assert (= ref result))
(check-sat)
