(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.647553121360518790794458254822529852390289306640625p-502 {- 2916319996061834 -502 (-1.25829e-151)}
; Y = -1.209097396150323078245492069981992244720458984375p-837 {- 941690955386736 -837 (-1.31933e-252)}
; -1.647553121360518790794458254822529852390289306640625p-502 * -1.209097396150323078245492069981992244720458984375p-837 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001001 #b1010010111000110000010101001011010101010100010001010)))
(assert (= y (fp #b1 #b00010111010 #b0011010110000111011010000010111000100100111101110000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
