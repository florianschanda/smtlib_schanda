(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2266564474352923408417836981243453919887542724609375p-468 {+ 1020769892210703 -468 (1.60948e-141)}
; 1.2266564474352923408417836981243453919887542724609375p-468 S == 1.1075452349386420980437151229125447571277618408203125p-234
; [HW: 1.1075452349386420980437151229125447571277618408203125p-234] 

; mpf : + 484340679995141 -234
; mpfd: + 484340679995141 -234 (4.01183e-071) class: Pos. norm. non-zero
; hwf : + 484340679995141 -234 (4.01183e-071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000101011 #b0011101000000110001010000010110100101001100000001111)))
(assert (= r (fp #b0 #b01100010101 #b0001101110001000000101011010001011100110111100000101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
