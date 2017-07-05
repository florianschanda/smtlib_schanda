(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.273993123053412279688245689612813293933868408203125p311 {+ 1233955326885426 311 (5.31491e+093)}
; Y = 1.520323545115662255966526572592556476593017578125p375 {+ 2343328923894992 375 (1.17e+113)}
; 1.273993123053412279688245689612813293933868408203125p311 < 1.520323545115662255966526572592556476593017578125p375 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110110 #b0100011000100100011010011100111011010111111000110010)))
(assert (= y (fp #b0 #b10101110110 #b1000010100110011111011001000000110011100010011010000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
