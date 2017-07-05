(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0794691706008869847011055753682740032672882080078125p-200 {- 357897327105597 -200 (-6.71755e-061)}
; Y = 1.149270765590490572805038027581758797168731689453125p28 {+ 672255764290642 28 (3.08505e+008)}
; -1.0794691706008869847011055753682740032672882080078125p-200 > 1.149270765590490572805038027581758797168731689453125p28 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110111 #b0001010001011000000101110111000011000101011000111101)))
(assert (= y (fp #b0 #b10000011011 #b0010011000110110100110111110000001110101110001010010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
