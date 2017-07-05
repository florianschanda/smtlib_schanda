(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8622745445249595519499052898027002811431884765625p-433 {- 3883339317413672 -433 (-8.39567e-131)}
; Y = 0.08507414242482713717663500574417412281036376953125p-1022 {+ 383139876123316 -1023 (1.89296e-309)}
; -1.8622745445249595519499052898027002811431884765625p-433 < 0.08507414242482713717663500574417412281036376953125p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001110 #b1101110010111110000001100100100011101000011100101000)))
(assert (= y (fp #b0 #b00000000000 #b0001010111000111011010110100001101110011001010110100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
