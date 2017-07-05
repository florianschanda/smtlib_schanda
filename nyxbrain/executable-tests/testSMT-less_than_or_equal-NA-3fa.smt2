(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv4194304 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv25 8) (_ bv0 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.leq f g) )
(assert (= ref result))
(check-sat)