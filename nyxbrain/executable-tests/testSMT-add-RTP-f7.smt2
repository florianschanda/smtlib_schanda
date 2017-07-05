(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv4788187 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv4788187 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv8082386 23)))
(define-fun rm () RoundingMode RTP )
(define-fun result () Float32 (fp.add rm f g) )
(assert (= ref result))
(check-sat)