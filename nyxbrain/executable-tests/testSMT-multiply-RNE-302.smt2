(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv2292099 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv2292099 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv124 8) (_ bv5210490 23)))
(define-fun rm () RoundingMode RNE )
(define-fun result () Float32 (fp.mul rm f g) )
(assert (= ref result))
(check-sat)