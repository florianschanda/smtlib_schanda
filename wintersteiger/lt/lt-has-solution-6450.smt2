(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7424658818623413036874580939183942973613739013671875p-430 {+ 3343769068890547 -430 (6.28443e-130)}
; Y = 1.7626441086764310650636389254941605031490325927734375p-908 {+ 3434643723651479 -908 (8.1457e-274)}
; 1.7424658818623413036874580939183942973613739013671875p-430 < 1.7626441086764310650636389254941605031490325927734375p-908 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010001 #b1011111000010010001111100111100011111110100110110011)))
(assert (= y (fp #b0 #b00001110011 #b1100001100111100101001001111000101000000100110010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
