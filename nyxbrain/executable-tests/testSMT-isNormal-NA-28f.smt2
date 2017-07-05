(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv133 8) (_ bv4194304 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.isNormal f) )
(assert (= ref result))
(check-sat)