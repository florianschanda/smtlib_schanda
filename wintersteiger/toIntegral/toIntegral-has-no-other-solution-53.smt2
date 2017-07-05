(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4112000160209710042380493177915923297405242919921875 583 {- 1851880238926787 583 (-4.46762e+175)}
; -1.4112000160209710042380493177915923297405242919921875 583 I == -1.4112000160209710042380493177915923297405242919921875 583
; [HW: -1.4112000160209710042380493177915923297405242919921875 583] 

; mpf : - 1851880238926787 583
; mpfd: - 1851880238926787 583 (-4.46762e+175) class: Neg. norm. non-zero
; hwf : - 1851880238926787 583 (-4.46762e+175) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000110 #b0110100101000100011001110111110011101100101111000011)))
(assert (= r (fp #b1 #b11001000110 #b0110100101000100011001110111110011101100101111000011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
