(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.202762929971247896077102268463931977748870849609375p-548 {- 913163055863062 -548 (-1.3054e-165)}
; Y = -1.3585225471600370639180255238898098468780517578125p-351 {- 1614642009793864 -351 (-2.96168e-106)}
; -1.202762929971247896077102268463931977748870849609375p-548 = -1.3585225471600370639180255238898098468780517578125p-351 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011011 #b0011001111101000010001010111100100010001010100010110)))
(assert (= y (fp #b1 #b01010100000 #b0101101111001000001000100011011011101110010101001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
