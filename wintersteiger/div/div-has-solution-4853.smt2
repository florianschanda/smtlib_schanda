(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1108914691329887514115171143203042447566986083984375p192 {- 499410779065895 192 (-6.97318e+057)}
; Y = 1.376607899393789136155419328133575618267059326171875p-657 {+ 1696091195374654 -657 (2.30199e-198)}
; -1.1108914691329887514115171143203042447566986083984375p192 / 1.376607899393789136155419328133575618267059326171875p-657 == -1.613954808224167702945806013303808867931365966796875p848
; [HW: -1.613954808224167702945806013303808867931365966796875p848] 

; mpf : - 2765006645540686 848
; mpfd: - 2765006645540686 848 (-3.0292e+255) class: Neg. norm. non-zero
; hwf : - 2765006645540686 848 (-3.0292e+255) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111111 #b0001110001100011011000100010000101010100111000100111)))
(assert (= y (fp #b0 #b00101101110 #b0110000001101001011000000001001101001111110000111110)))
(assert (= r (fp #b1 #b11101001111 #b1001110100101100001001000110111010001011011101001110)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
