(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv227 8) (_ bv0 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv3474675 23)))
(define-fun ref () Bool true)
(define-fun result () Bool (fp.lt f g) )
(assert (= ref result))
(check-sat)