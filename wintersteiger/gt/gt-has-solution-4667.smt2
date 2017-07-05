(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.153895746882778627906418478232808411121368408203125p-315 {- 693084828315186 -315 (-1.72869e-095)}
; Y = -1.3575279774147828160124618079862557351589202880859375p-602 {- 1610162865859743 -602 (-8.17883e-182)}
; -1.153895746882778627906418478232808411121368408203125p-315 > -1.3575279774147828160124618079862557351589202880859375p-602 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000100 #b0010011101100101101101100010111111011010111000110010)))
(assert (= y (fp #b1 #b00110100101 #b0101101110000110111101000001101001100110110010011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
