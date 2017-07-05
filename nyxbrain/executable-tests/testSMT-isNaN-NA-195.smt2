(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv71 8) (_ bv0 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isNaN f) )
(assert (= ref result))
(check-sat)