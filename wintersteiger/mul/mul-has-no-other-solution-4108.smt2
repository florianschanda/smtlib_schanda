(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.813130799648572821780589947593398392200469970703125p-242 {- 3662015566300786 -242 (-2.56549e-073)}
; Y = 1.0133516458097486800937758744112215936183929443359375p441 {+ 60130467093567 441 (5.75424e+132)}
; -1.813130799648572821780589947593398392200469970703125p-242 * 1.0133516458097486800937758744112215936183929443359375p441 == -1.8373390798922268896120613135281018912792205810546875p199
; [HW: -1.8373390798922268896120613135281018912792205810546875p199] 

; mpf : - 3771039968185387 199
; mpfd: - 3771039968185387 199 (-1.47625e+060) class: Neg. norm. non-zero
; hwf : - 3771039968185387 199 (-1.47625e+060) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001101 #b1101000000101001010101110000111111011100011001110010)))
(assert (= y (fp #b0 #b10110111000 #b0000001101101011000000110111001000011001110000111111)))
(assert (= r (fp #b1 #b10011000110 #b1101011001011011110110101001101111001100110000101011)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
