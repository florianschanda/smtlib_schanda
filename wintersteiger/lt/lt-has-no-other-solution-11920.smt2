(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8279341328767759744522436449187807738780975341796875p343 {- 3728683852311163 343 (-3.27528e+103)}
; Y = 1.4259812269842211396309039628249593079090118408203125p-64 {+ 1918448895112965 -64 (7.73026e-020)}
; -1.8279341328767759744522436449187807738780975341796875p343 < 1.4259812269842211396309039628249593079090118408203125p-64 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010110 #b1101001111110011011111011100011111110010101001111011)))
(assert (= y (fp #b0 #b01110111111 #b0110110100001101000110110000111010011011011100000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
