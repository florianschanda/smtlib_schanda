(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv2 23)))
(define-fun g () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv8388607 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)