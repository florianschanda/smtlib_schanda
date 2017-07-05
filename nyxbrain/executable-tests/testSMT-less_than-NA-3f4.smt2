(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv1 23)))
(define-fun g () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv4194304 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.lt f g) )
(assert (= ref result))
(check-sat)