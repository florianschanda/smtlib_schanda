(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv0 8) (_ bv8388607 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv2292099 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)
