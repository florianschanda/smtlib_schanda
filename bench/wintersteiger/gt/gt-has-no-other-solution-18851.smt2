(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.787963345806442561070070951245725154876708984375p708 {+ 3548671430555504 708 (2.40766e+213)}
; Y = 1.5906653088470097401341263321228325366973876953125p-102 {+ 2660120064824072 -102 (3.13703e-031)}
; 1.787963345806442561070070951245725154876708984375p708 > 1.5906653088470097401341263321228325366973876953125p-102 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011000011 #b1100100110110111111101110100000010101111011101110000)))
(assert (= y (fp #b0 #b01110011001 #b1001011100110101110101110111100001100001001100001000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
