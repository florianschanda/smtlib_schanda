(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.574978819036772392792045138776302337646484375p808 {- 2589474395159936 808 (-2.68851e+243)}
; Y = -1.31479878270201044898612963152118027210235595703125p-180 {- 1417727680473460 -180 (-8.57946e-055)}
; -1.574978819036772392792045138776302337646484375p808 > -1.31479878270201044898612963152118027210235595703125p-180 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100111 #b1001001100110001110011111101011110100111110110000000)))
(assert (= y (fp #b1 #b01101001011 #b0101000010010110101001110010110010000110100101110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
