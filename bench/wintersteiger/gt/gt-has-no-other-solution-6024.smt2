(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6392881395363947394372416965779848396778106689453125p-373 {- 2879097826998485 -373 (-8.52054e-113)}
; Y = -1.418281348546283737732665031217038631439208984375p-325 {- 1883771725449072 -325 (-2.07498e-098)}
; -1.6392881395363947394372416965779848396778106689453125p-373 > -1.418281348546283737732665031217038631439208984375p-325 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001010 #b1010001110101000011000110011010000000111100011010101)))
(assert (= y (fp #b1 #b01010111010 #b0110101100010100011111001000100010001000011101110000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
