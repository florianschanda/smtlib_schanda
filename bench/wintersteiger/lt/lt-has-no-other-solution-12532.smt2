(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.591791329088491746546196736744605004787445068359375p187 {- 2665191209164022 187 (-3.12245e+056)}
; Y = 1.2024420528274799568890784939867444336414337158203125p-294 {+ 911717953677957 -294 (3.77786e-089)}
; -1.591791329088491746546196736744605004787445068359375p187 < 1.2024420528274799568890784939867444336414337158203125p-294 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111010 #b1001011101111111101000101111010001111101110011110110)))
(assert (= y (fp #b0 #b01011011001 #b0011001111010011001111100000110000111010101010000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
