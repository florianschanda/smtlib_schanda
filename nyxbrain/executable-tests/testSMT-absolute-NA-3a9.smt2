(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv76 8) (_ bv4194304 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv76 8) (_ bv4194304 23)))
(define-fun result () Float32 (fp.abs f) )
(assert (= ref result))
(check-sat)