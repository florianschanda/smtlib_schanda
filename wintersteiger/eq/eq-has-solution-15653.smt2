(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.88904257981974676994241235661320388317108154296875p-1022 {- 4003891831192716 -1023 (-1.97819e-308)}
; Y = -1.165477846293609065497776100528426468372344970703125p859 {- 745245966905970 859 (-4.47992e+258)}
; -0.88904257981974676994241235661320388317108154296875p-1022 = -1.165477846293609065497776100528426468372344970703125p859 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1110001110011000010010110110010100010011110010001100)))
(assert (= y (fp #b1 #b11101011010 #b0010101001011100110000011001001000001011001001110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
