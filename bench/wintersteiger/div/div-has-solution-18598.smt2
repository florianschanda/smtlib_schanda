(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3387997679611325363424612078233622014522552490234375p-436 {+ 1525818508742967 -436 (7.54462e-132)}
; Y = -1.0420510311764623612162949939374811947345733642578125p813 {- 189381008336861 813 (-5.69214e+244)}
; 1.3387997679611325363424612078233622014522552490234375p-436 / -1.0420510311764623612162949939374811947345733642578125p813 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001011 #b0101011010111011100101001110001101001001000100110111)))
(assert (= y (fp #b1 #b11100101100 #b0000101011000011110110110011101110101010011111011101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
