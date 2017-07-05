(set-logic ALL_SUPPORTED)
; Should be SAT
(define-fun f () Float32 (fp (_ bv1 1) (_ bv0 8) (_ bv2 23)))
(define-fun g () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv4788187 23)))
(define-fun ref () Float32 (fp (_ bv0 1) (_ bv127 8) (_ bv4788186 23)))
(define-fun rm () RoundingMode RTZ )
(define-fun result () Float32 (fp.add rm f g) )
(assert (= ref result))
(check-sat)