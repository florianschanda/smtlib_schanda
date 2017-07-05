(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1139484328584199346323657664470374584197998046875p643 {- 513178119760632 643 (-4.06586e+193)}
; Y = 1.2882325819527113974771737048286013305187225341796875p-655 {+ 1298084148678267 -655 (8.61682e-198)}
; -1.1139484328584199346323657664470374584197998046875p643 = 1.2882325819527113974771737048286013305187225341796875p-655 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000010 #b0001110100101011101110010111100010001110101011111000)))
(assert (= y (fp #b0 #b00101110000 #b0100100111001001100111000100100100100000111001111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
