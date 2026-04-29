(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.480832541760543907827241127961315214633941650390625p477 {- 2165477255900394 477 (-5.77848e+143)}
; Y = 1.199766490883846348225461042602546513080596923828125p-833 {+ 899668293905602 -833 (2.09464e-251)}
; -1.480832541760543907827241127961315214633941650390625p477 = 1.199766490883846348225461042602546513080596923828125p-833 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011100 #b0111101100010111110101110110100110110110110011101010)))
(assert (= y (fp #b0 #b00010111110 #b0011001100100011111001011001000100101110110011000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
