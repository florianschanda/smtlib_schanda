(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.67389020161768709016314460313878953456878662109375p-21 {- 3034931660894044 -21 (-7.98173e-007)}
; Y = -1.6269321631681206152819640919915400445461273193359375p-747 {- 2823451456430527 -747 (-2.19767e-225)}
; -1.67389020161768709016314460313878953456878662109375p-21 < -1.6269321631681206152819640919915400445461273193359375p-747 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101010 #b1010110010000100000100010111100100001010111101011100)))
(assert (= y (fp #b1 #b00100010100 #b1010000001111110101000000101000110011110000110111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
