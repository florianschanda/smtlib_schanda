(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0785036180966749430609752380405552685260772705078125p-648 {+ 353548865207421 -648 (9.23388e-196)}
; Y = -1.8533899270968021699701466786791570484638214111328125p26 {- 3843326557674893 26 (-1.24379e+008)}
; 1.0785036180966749430609752380405552685260772705078125p-648 < -1.8533899270968021699701466786791570484638214111328125p26 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110111 #b0001010000011000110100000010100001010111110001111101)))
(assert (= y (fp #b1 #b10000011001 #b1101101001110111110000110010001110011101110110001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
