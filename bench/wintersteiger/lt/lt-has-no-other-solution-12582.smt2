(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.949091689499863999657236490747891366481781005859375p-43 {+ 4274328979172022 -43 (2.21586e-013)}
; Y = 1.035303248259983543988482779241167008876800537109375p-444 {+ 158991695708630 -444 (2.27903e-134)}
; 1.949091689499863999657236490747891366481781005859375p-43 < 1.035303248259983543988482779241167008876800537109375p-444 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010100 #b1111001011110111101011000100011101001110101010110110)))
(assert (= y (fp #b0 #b01001000011 #b0000100100001001101000100011100010111000000111010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
