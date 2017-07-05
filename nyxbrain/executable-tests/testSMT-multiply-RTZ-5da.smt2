(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv124 8) (_ bv8388607 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv3240472 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv124 8) (_ bv3240471 23)))
(define-fun rm () RoundingMode RTZ )
(define-fun result () Float32 (fp.mul rm f g) )
(assert (= ref result))
(check-sat)