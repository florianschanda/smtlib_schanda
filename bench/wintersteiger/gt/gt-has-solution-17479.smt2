(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.319455075569508029076359889586456120014190673828125p885 {- 1438697759296450 885 (-3.40362e+266)}
; Y = 1.5278850778492689688192740504746325314044952392578125p-354 {+ 2377383039896413 -354 (4.16363e-107)}
; -1.319455075569508029076359889586456120014190673828125p885 > 1.5278850778492689688192740504746325314044952392578125p-354 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110100 #b0101000111000111110011101100111000011100101111000010)))
(assert (= y (fp #b0 #b01010011101 #b1000011100100011011110011111100101101000101101011101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
