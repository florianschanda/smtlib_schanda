(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8420615628158902854494272105512209236621856689453125 76 {+ 3792308140520661 76 (1.39182e+023)}
; 1.8420615628158902854494272105512209236621856689453125 76 I == 1.8420615628158902854494272105512209236621856689453125 76
; [HW: 1.8420615628158902854494272105512209236621856689453125 76] 

; mpf : + 3792308140520661 76
; mpfd: + 3792308140520661 76 (1.39182e+023) class: Pos. norm. non-zero
; hwf : + 3792308140520661 76 (1.39182e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001011 #b1101011110010001010110001011100110000011010011010101)))
(assert (= r (fp #b0 #b10001001011 #b1101011110010001010110001011100110000011010011010101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
