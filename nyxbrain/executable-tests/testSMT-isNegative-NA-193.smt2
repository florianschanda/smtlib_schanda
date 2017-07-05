(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv198 8) (_ bv0 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isNegative f) )
(assert (= ref result))
(check-sat)