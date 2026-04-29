(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.81098194307475690578712601563893258571624755859375p-956 {- 3652337976635676 -956 (-2.9733e-288)}
; Y = -1.355111194439654553889340604655444622039794921875p-694 {- 1599278642953520 -694 (-1.64876e-209)}
; -1.81098194307475690578712601563893258571624755859375p-956 = -1.355111194439654553889340604655444622039794921875p-694 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000011 #b1100111110011100100000110011101100100111000100011100)))
(assert (= y (fp #b1 #b00101001001 #b0101101011101000100100010011011010001111110100110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
