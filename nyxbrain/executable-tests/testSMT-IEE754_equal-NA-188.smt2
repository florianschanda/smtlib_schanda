(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv2292099 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv125 8) (_ bv6183897 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.eq f g) )
(assert (= ref result))
(check-sat)