(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7950888487586187380884439335204660892486572265625p-26 {+ 3580761842995752 -26 (2.67489e-008)}
; Y = -1.8414266369309773008211550404666922986507415771484375p-854 {- 3789448688541959 -854 (-1.53299e-257)}
; 1.7950888487586187380884439335204660892486572265625p-26 - -1.8414266369309773008211550404666922986507415771484375p-854 == 1.7950888487586187380884439335204660892486572265625p-26
; [HW: 1.7950888487586187380884439335204660892486572265625p-26] 

; mpf : + 3580761842995752 -26
; mpfd: + 3580761842995752 -26 (2.67489e-008) class: Pos. norm. non-zero
; hwf : + 3580761842995752 -26 (2.67489e-008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111100101 #b1100101110001010111100010101101011010101001000101000)))
(assert (= y (fp #b1 #b00010101001 #b1101011101100111101111000110111110011010000100000111)))
(assert (= r (fp #b0 #b01111100101 #b1100101110001010111100010101101011010101001000101000)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
