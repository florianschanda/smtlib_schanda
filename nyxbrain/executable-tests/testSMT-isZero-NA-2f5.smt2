(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv31 8) (_ bv4194304 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isZero f) )
(assert (= ref result))
(check-sat)