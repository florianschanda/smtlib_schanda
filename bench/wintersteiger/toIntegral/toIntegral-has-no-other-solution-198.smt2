(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8239690321229218294973861702601425349712371826171875 235 {+ 3710826626033619 235 (1.00709e+071)}
; 1.8239690321229218294973861702601425349712371826171875 235 I == 1.8239690321229218294973861702601425349712371826171875 235
; [HW: 1.8239690321229218294973861702601425349712371826171875 235] 

; mpf : + 3710826626033619 235
; mpfd: + 3710826626033619 235 (1.00709e+071) class: Pos. norm. non-zero
; hwf : + 3710826626033619 235 (1.00709e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101010 #b1101001011101111101000100110110111100010011111010011)))
(assert (= r (fp #b0 #b10011101010 #b1101001011101111101000100110110111100010011111010011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
