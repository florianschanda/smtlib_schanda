(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv64 8) (_ bv2356321 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.isZero f) )
(assert (= ref result))
(check-sat)