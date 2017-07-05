(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv156 8) (_ bv3523719 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isPositive f) )
(assert (= ref result))
(check-sat)