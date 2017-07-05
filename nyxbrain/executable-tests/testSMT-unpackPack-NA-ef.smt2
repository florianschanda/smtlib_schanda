(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv157 8) (_ bv0 23)))
(define-fun ref () Float32 (fp (_ bv1 1) (_ bv157 8) (_ bv0 23)))
(define-fun result () Float32 f )
(assert (= ref result))
(check-sat)