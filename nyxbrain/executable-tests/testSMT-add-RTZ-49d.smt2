(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv6183897 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv131 8) (_ bv227695 23)))
(define-fun rm () RoundingMode RTZ )
(define-fun result () Float32 (fp.add rm f g) )
(assert (= ref result))
(check-sat)