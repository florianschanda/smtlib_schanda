(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.08425370327949810445034017902798950672149658203125p-368 {- 379444946694132 -368 (-1.8034e-111)}
; Y = -1.50547260665471238638701834133826196193695068359375p523 {- 2276446242976156 523 (-4.13391e+157)}
; -1.08425370327949810445034017902798950672149658203125p-368 = -1.50547260665471238638701834133826196193695068359375p523 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001111 #b0001010110010001101001101001010000100110111111110100)))
(assert (= y (fp #b1 #b11000001010 #b1000000101100110101001110001101010011011000110011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
