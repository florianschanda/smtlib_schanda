(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv229 8) (_ bv0 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isSubnormal f) )
(assert (= ref result))
(check-sat)