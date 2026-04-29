(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1848684312146016139877247042022645473480224609375p-269 {+ 832573397930648 -269 (1.24911e-081)}
; Y = -1.0350248104292958384320400000433437526226043701171875p450 {- 157737723198099 450 (-3.00918e+135)}
; 1.1848684312146016139877247042022645473480224609375p-269 > -1.0350248104292958384320400000433437526226043701171875p450 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110010 #b0010111101010011100010011001101000100001001010011000)))
(assert (= y (fp #b1 #b10111000001 #b0000100011110111011000101100111101010111101010010011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
