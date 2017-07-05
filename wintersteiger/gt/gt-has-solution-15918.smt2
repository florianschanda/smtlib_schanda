(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.363944548672982204351455948199145495891571044921875p170 {- 1639060533787166 170 (-2.04125e+051)}
; Y = 1.7964904854300456360505222619394771754741668701171875p57 {+ 3587074253386899 57 (2.58902e+017)}
; -1.363944548672982204351455948199145495891571044921875p170 > 1.7964904854300456360505222619394771754741668701171875p57 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101001 #b0101110100101011011110000100111000011011101000011110)))
(assert (= y (fp #b0 #b10000111000 #b1100101111100110110011001110101001111111010010010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
