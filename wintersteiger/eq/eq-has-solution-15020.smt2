(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2444054192914164591599046616465784609317779541015625p-426 {- 1100704155248153 -426 (-7.18098e-129)}
; Y = 1.7597709836713633091420661003212444484233856201171875p-597 {+ 3421704318949267 -597 (3.39273e-180)}
; -1.2444054192914164591599046616465784609317779541015625p-426 = 1.7597709836713633091420661003212444484233856201171875p-597 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010101 #b0011111010010001010110101000001011010010011000011001)))
(assert (= y (fp #b0 #b00110101010 #b1100001010000000010110011110011101010001011110010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
