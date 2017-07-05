(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv6183897 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv3474675 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv1915708 23)))
(define-fun rm () RoundingMode RTN )
(define-fun result () Float32 (fp.mul rm f g) )
(assert (= ref result))
(check-sat)