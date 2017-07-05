(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv147 8) (_ bv1 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isPositive f) )
(assert (= ref result))
(check-sat)