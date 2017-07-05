(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv101 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv2292099 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)