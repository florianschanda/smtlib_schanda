(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.622147083300349290624353670864365994930267333984375p926 {- 2801901372521094 926 (-9.20166e+278)}
; Y = -1.19391369733366214944680905318818986415863037109375p-365 {- 873309655053916 -365 (-1.58864e-110)}
; -1.622147083300349290624353670864365994930267333984375p926 > -1.19391369733366214944680905318818986415863037109375p-365 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011101 #b1001111101000101000010000000000000010011101010000110)))
(assert (= y (fp #b1 #b01010010010 #b0011000110100100010100111111110001001011011001011100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
