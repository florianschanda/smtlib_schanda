(set-logic ALL_SUPPORTED)
(set-info :status sat)
(define-fun f () Float32 (fp (_ bv0 1) (_ bv4 8) (_ bv1 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv4 8) (_ bv1 23)))
(define-fun result () Float32 (fp.abs f) )
(assert (= ref result))
(check-sat)
