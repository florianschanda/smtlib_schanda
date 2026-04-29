(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9482883151838283897205883476999588310718536376953125p321 {+ 4270710902901685 321 (8.32304e+096)}
; Y = 1.5816965980536108471454781465581618249416351318359375p-174 {+ 2619728582236927 -174 (6.60547e-053)}
; 1.9482883151838283897205883476999588310718536376953125p321 = 1.5816965980536108471454781465581618249416351318359375p-174 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000000 #b1111001011000011000001011110010011100100101110110101)))
(assert (= y (fp #b0 #b01101010001 #b1001010011101010000100010111100011010101101011111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
