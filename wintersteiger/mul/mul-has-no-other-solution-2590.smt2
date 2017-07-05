(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9370450206722449326690593807143159210681915283203125p-108 {- 4220075605928901 -108 (-5.96898e-033)}
; Y = 1.9299378600577228315415823090006597340106964111328125p98 {+ 4188067800033677 98 (6.11622e+029)}
; -1.9370450206722449326690593807143159210681915283203125p-108 * 1.9299378600577228315415823090006597340106964111328125p98 == -1.869188261015830132549808695330284535884857177734375p-9
; [HW: -1.869188261015830132549808695330284535884857177734375p-9] 

; mpf : - 3914475928425702 -9
; mpfd: - 3914475928425702 -9 (-0.00365076) class: Neg. norm. non-zero
; hwf : - 3914475928425702 -9 (-0.00365076) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110010011 #b1110111111100010001011101011011010101010101111000101)))
(assert (= y (fp #b0 #b10001100001 #b1110111000010000011010000101100001000010100110001101)))
(assert (= r (fp #b1 #b01111110110 #b1101111010000011000111110011001100100001010011100110)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
