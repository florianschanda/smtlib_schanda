(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.556668608438033896135266331839375197887420654296875p-252 {+ 2507012537530382 -252 (2.15098e-076)}
; 1.556668608438033896135266331839375197887420654296875p-252 S == 1.2476652629764257707023489274433813989162445068359375p-126
; [HW: 1.2476652629764257707023489274433813989162445068359375p-126] 

; mpf : + 1115385186053247 -126
; mpfd: + 1115385186053247 -126 (1.46662e-038) class: Pos. norm. non-zero
; hwf : + 1115385186053247 -126 (1.46662e-038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000011 #b1000111010000001110101010111101111110011100000001110)))
(assert (= r (fp #b0 #b01110000001 #b0011111101100110111111011001110011010110110001111111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
