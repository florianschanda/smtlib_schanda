(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.44887161914456452649346829275600612163543701171875 494 {- 2021538056716652 494 (-7.4105e+148)}
; -1.44887161914456452649346829275600612163543701171875 494 I == -1.44887161914456452649346829275600612163543701171875 494
; [HW: -1.44887161914456452649346829275600612163543701171875 494] 

; mpf : - 2021538056716652 494
; mpfd: - 2021538056716652 494 (-7.4105e+148) class: Neg. norm. non-zero
; hwf : - 2021538056716652 494 (-7.4105e+148) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101101 #b0111001011101001010000000001110001010100000101101100)))
(assert (= r (fp #b1 #b10111101101 #b0111001011101001010000000001110001010100000101101100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
