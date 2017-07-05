(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv2097152 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv3240472 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv1733743 23)))
(define-fun rm () RoundingMode RNE )
(define-fun result () Float32 (fp.sub rm f g) )
(assert (= ref result))
(check-sat)