(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv227 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv126 8) (_ bv3240472 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (fp.eq f g) )
(assert (= ref result))
(check-sat)