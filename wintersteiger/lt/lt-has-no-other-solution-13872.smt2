(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.583983389060592994468379401951096951961517333984375p830 {- 2630027373363846 830 (-1.13409e+250)}
; Y = -1.82775160446954476611836071242578327655792236328125p-922 {- 3727861817444372 -922 (-5.15539e-278)}
; -1.583983389060592994468379401951096951961517333984375p830 < -1.82775160446954476611836071242578327655792236328125p-922 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111101 #b1001010101111111111011110111010101101100001010000110)))
(assert (= y (fp #b1 #b00001100101 #b1101001111100111100001110111011001101000100000010100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
