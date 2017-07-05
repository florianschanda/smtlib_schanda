(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv125 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv1269134 23)))
(define-fun ref () Float32 (fp (_ bv1 1) (_ bv128 8) (_ bv2317710 23)))
(define-fun rm () RoundingMode RTP )
(define-fun result () Float32 (fp.sub rm f g) )
(assert (= ref result))
(check-sat)