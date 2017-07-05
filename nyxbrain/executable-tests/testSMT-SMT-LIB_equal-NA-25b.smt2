(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv0 1) (_ bv128 8) (_ bv4788187 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv3474675 23)))
(define-fun ref () Bool false)
(define-fun result () Bool (= f g) )
(assert (= ref result))
(check-sat)