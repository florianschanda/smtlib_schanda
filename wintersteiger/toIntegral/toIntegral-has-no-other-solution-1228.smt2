(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.77853372164724898851773104979656636714935302734375 841 {+ 3506204178705916 841 (2.60789e+253)}
; 1.77853372164724898851773104979656636714935302734375 841 I == 1.77853372164724898851773104979656636714935302734375 841
; [HW: 1.77853372164724898851773104979656636714935302734375 841] 

; mpf : + 3506204178705916 841
; mpfd: + 3506204178705916 841 (2.60789e+253) class: Pos. norm. non-zero
; hwf : + 3506204178705916 841 (2.60789e+253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001000 #b1100011101001101111111000110100101001110110111111100)))
(assert (= r (fp #b0 #b11101001000 #b1100011101001101111111000110100101001110110111111100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
