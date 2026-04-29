(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4369532910100393241492611196008510887622833251953125p-673 {+ 1967862678571125 -673 (3.66653e-203)}
; 1.4369532910100393241492611196008510887622833251953125p-673 S == 1.69526003374705869219951637205667793750762939453125p-337
; [HW: 1.69526003374705869219951637205667793750762939453125p-337] 

; mpf : + 3131172828908852 -337
; mpfd: + 3131172828908852 -337 (6.05519e-102) class: Pos. norm. non-zero
; hwf : + 3131172828908852 -337 (6.05519e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011110 #b0110111111011100001010111011111011000100100001110101)))
(assert (= r (fp #b0 #b01010101110 #b1011000111111100100011111100001100101000110100110100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
