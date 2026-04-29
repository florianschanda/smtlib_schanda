(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.17268118909475216327109592384658753871917724609375p1020 {- 777686938861020 1020 (-1.31758e+307)}
; Y = -1.601692715608859174380995682440698146820068359375p-38 {- 2709783089807600 -38 (-5.82692e-012)}
; -1.17268118909475216327109592384658753871917724609375p1020 = -1.601692715608859174380995682440698146820068359375p-38 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111011 #b0010110000110100110101011001101111001011110111011100)))
(assert (= y (fp #b1 #b01111011001 #b1001101000001000100010001010011111001000000011110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
