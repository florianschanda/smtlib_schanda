(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv2292099 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv3240472 23)))
(define-fun ref () Float32 (fp (_ bv1 1) (_ bv122 8) (_ bv6785360 23)))
(define-fun rm () RoundingMode RTZ )
(define-fun result () Float32 (fp.sub rm f g) )
(assert (= ref result))
(check-sat)