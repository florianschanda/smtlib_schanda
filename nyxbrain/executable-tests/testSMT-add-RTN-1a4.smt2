(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv1076923 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv1269134 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv6001899 23)))
(define-fun rm () RoundingMode RTN )
(define-fun result () Float32 (fp.add rm f g) )
(assert (= ref result))
(check-sat)
