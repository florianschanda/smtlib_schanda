(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv6 8) (_ bv4194305 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv6 8) (_ bv4194305 23)))
(define-fun result () Float32 (fp.abs f) )
(assert (= ref result))
(check-sat)
