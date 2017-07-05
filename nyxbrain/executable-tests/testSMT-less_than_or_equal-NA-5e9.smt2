(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv22 8) (_ bv8388607 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv4788187 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.leq f g) )
(assert (= ref result))
(check-sat)