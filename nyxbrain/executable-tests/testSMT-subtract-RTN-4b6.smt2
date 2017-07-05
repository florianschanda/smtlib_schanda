(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv155 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv4788187 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv154 8) (_ bv8388607 23)))
(define-fun rm () RoundingMode RTN )
(define-fun result () Float32 (fp.sub rm f g) )
(assert (= ref result))
(check-sat)