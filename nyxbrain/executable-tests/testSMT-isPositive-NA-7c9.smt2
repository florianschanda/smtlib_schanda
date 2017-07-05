(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv84 8) (_ bv4194305 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isPositive f) )
(assert (= ref result))
(check-sat)