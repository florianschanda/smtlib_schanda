(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv185 8) (_ bv1 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isSubnormal f) )
(assert (= ref result))
(check-sat)