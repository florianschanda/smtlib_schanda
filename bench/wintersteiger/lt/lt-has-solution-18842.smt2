(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1372873585110869765202323833364062011241912841796875p512 {- 618287296633211 512 (-1.52485e+154)}
; Y = -1.4416202315153083812759859938523732125759124755859375p243 {- 1988880710091615 243 (-2.0377e+073)}
; -1.1372873585110869765202323833364062011241912841796875p512 < -1.4416202315153083812759859938523732125759124755859375p243 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111111 #b0010001100100101010000111010101011110101100101111011)))
(assert (= y (fp #b1 #b10011110010 #b0111000100001110000001100000001110011100001101011111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
