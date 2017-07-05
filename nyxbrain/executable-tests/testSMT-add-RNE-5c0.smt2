(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv2097152 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv3012692 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv3522314 23)))
(define-fun rm () RoundingMode RNE )
(define-fun result () Float32 (fp.add rm f g) )
(assert (= ref result))
(check-sat)