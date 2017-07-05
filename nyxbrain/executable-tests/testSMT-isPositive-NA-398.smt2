(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv72 8) (_ bv4194304 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isPositive f) )
(assert (= ref result))
(check-sat)