(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.19906501654607655638073993031866848468780517578125p323 {- 896509134339412 323 (-2.04895e+097)}
; Y = 1.797235325612650314042184618301689624786376953125p483 {+ 3590428715355728 483 (4.48841e+145)}
; Z = -1.5245725289228435617161494519677944481372833251953125p487 {- 2362464645785717 487 (-6.09195e+146)}
; -1.19906501654607655638073993031866848468780517578125p323 x 1.797235325612650314042184618301689624786376953125p483 -1.5245725289228435617161494519677944481372833251953125p487 == -1.0775010027214630969893960354966111481189727783203125p807
; [HW: -1.0775010027214630969893960354966111481189727783203125p807] 

; mpf : - 349033486977221 807
; mpfd: - 349033486977221 807 (-9.19653e+242) class: Neg. norm. non-zero
; hwf : - 349033486977221 807 (-9.19653e+242) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000010 #b0011001011110101111011001100011111010111110101010100)))
(assert (= y (fp #b0 #b10111100010 #b1100110000010111100111010100001010111000111001010000)))
(assert (= z (fp #b1 #b10111100110 #b1000011001001010011000101010000000011010100001110101)))
(assert (= r (fp #b1 #b11100100110 #b0001001111010111000110110001000000011000100011000101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
