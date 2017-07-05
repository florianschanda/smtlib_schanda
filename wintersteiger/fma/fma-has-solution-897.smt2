(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3350465595022471543273923089145682752132415771484375p-963 {- 1508915560526087 -963 (-1.71242e-290)}
; Y = 1.54490026041947903223672255990095436573028564453125p788 {+ 2454012609779252 788 (2.51499e+237)}
; Z = -1.5616450597287683255132151316502131521701812744140625p-275 {- 2529424481708961 -275 (-2.57237e-083)}
; -1.3350465595022471543273923089145682752132415771484375p-963 x 1.54490026041947903223672255990095436573028564453125p788 -1.5616450597287683255132151316502131521701812744140625p-275 == -1.0312568887235753489761691525927744805812835693359375p-174
; [HW: -1.0312568887235753489761691525927744805812835693359375p-174] 

; mpf : - 140768512408255 -174
; mpfd: - 140768512408255 -174 (-4.30673e-053) class: Neg. norm. non-zero
; hwf : - 140768512408255 -174 (-4.30673e-053) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111100 #b0101010111000101100111000111111110110011000100000111)))
(assert (= y (fp #b0 #b11100010011 #b1000101101111110100101010101111000010101011000110100)))
(assert (= z (fp #b1 #b01011101100 #b1000111111000111111110000111101101111110101110100001)))
(assert (= r (fp #b1 #b01101010001 #b0000100000000000011100111001001011010111101010111111)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
