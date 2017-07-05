(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1081644593981019308870372697128914296627044677734375p970 {- 487129419040023 970 (-1.10586e+292)}
; Y = 1.3910685417177852674086580009316094219684600830078125p854 {+ 1761216138756541 854 (1.67096e+257)}
; -1.1081644593981019308870372697128914296627044677734375p970 = 1.3910685417177852674086580009316094219684600830078125p854 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001001 #b0001101110110000101010100111111110110100010100010111)))
(assert (= y (fp #b0 #b11101010101 #b0110010000011101000100010110010100101100000110111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
