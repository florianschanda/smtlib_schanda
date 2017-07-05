(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4621682862814198156087286406545899808406829833984375p-345 {- 2081420921879463 -345 (-2.04009e-104)}
; Y = -1.604481395233872564887178668868727982044219970703125p-139 {- 2722342186327666 -139 (-2.30232e-042)}
; -1.4621682862814198156087286406545899808406829833984375p-345 < -1.604481395233872564887178668868727982044219970703125p-139 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100110 #b0111011001010000101010010010101011010011101110100111)))
(assert (= y (fp #b1 #b01101110100 #b1001101010111111010010101110111110010001111001110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
