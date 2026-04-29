(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.682763850966647822815502877347171306610107421875p483 {+ 3074895024795440 483 (4.20253e+145)}
; Y = 1.2405028850761568026683789867092855274677276611328125p454 {+ 1083128703610509 454 (5.77053e+136)}
; 1.682763850966647822815502877347171306610107421875p483 > 1.2405028850761568026683789867092855274677276611328125p454 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100010 #b1010111011001001100111001001101011001010111100110000)))
(assert (= y (fp #b0 #b10111000101 #b0011110110010001100110001101100111111110111010001101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
