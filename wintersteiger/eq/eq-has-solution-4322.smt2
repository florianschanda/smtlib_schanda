(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3543152613534530370742459126631729304790496826171875p832 {- 1595694079003091 832 (-3.87861e+250)}
; Y = 1.699431944821315543237005840637721121311187744140625p-478 {+ 3149961446068298 -478 (2.17754e-144)}
; -1.3543152613534530370742459126631729304790496826171875p832 = 1.699431944821315543237005840637721121311187744140625p-478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111111 #b0101101010110100011001111010101111111100100111010011)))
(assert (= y (fp #b0 #b01000100001 #b1011001100001101111110001101000011001001000001001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
