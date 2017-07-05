(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3832309983072452741481583871063776314258575439453125 341 {- 1725918981173333 341 (-6.19617e+102)}
; -1.3832309983072452741481583871063776314258575439453125 341 I == -1.3832309983072452741481583871063776314258575439453125 341
; [HW: -1.3832309983072452741481583871063776314258575439453125 341] 

; mpf : - 1725918981173333 341
; mpfd: - 1725918981173333 341 (-6.19617e+102) class: Neg. norm. non-zero
; hwf : - 1725918981173333 341 (-6.19617e+102) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010100 #b0110001000011011011011010011110010001011000001010101)))
(assert (= r (fp #b1 #b10101010100 #b0110001000011011011011010011110010001011000001010101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
