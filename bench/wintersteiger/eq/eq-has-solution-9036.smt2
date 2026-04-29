(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.705134793287112149329232124728150665760040283203125p-61 {- 3175644792293810 -61 (-7.39484e-019)}
; Y = 1.48692301708477447874656718340702354907989501953125p966 {+ 2192906318301108 966 (9.27394e+290)}
; -1.705134793287112149329232124728150665760040283203125p-61 = 1.48692301708477447874656718340702354907989501953125p966 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000010 #b1011010010000011101101101011110001110000100110110010)))
(assert (= y (fp #b0 #b11111000101 #b0111110010100110111111001010001000001100011110110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
