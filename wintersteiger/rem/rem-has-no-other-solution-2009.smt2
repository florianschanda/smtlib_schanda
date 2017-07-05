(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.093348136539166404190837056376039981842041015625p141 {+ 420402632933520 141 (3.04781e+042)}
; Y = -1.0649566823773708446054797605029307305812835693359375p567 {- 292538890549951 567 (-5.14446e+170)}
; 1.093348136539166404190837056376039981842041015625p141 % -1.0649566823773708446054797605029307305812835693359375p567 == 1.093348136539166404190837056376039981842041015625p141
; [HW: 1.093348136539166404190837056376039981842041015625p141] 

; mpf : + 420402632933520 141
; mpfd: + 420402632933520 141 (3.04781e+042) class: Pos. norm. non-zero
; hwf : + 420402632933520 141 (3.04781e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001100 #b0001011111100101101010011101100110010100000010010000)))
(assert (= y (fp #b1 #b11000110110 #b0001000010100001000000000100101001110111101010111111)))
(assert (= r (fp #b0 #b10010001100 #x17e5a9d994090)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
