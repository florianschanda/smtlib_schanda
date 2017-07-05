(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.232712850854099873032510004122741520404815673828125p1 {+ 1048045508390850 1 (2.46543)}
; Y = 1.28015505488062419914285783306695520877838134765625p-40 {+ 1261706200766340 -40 (1.16429e-012)}
; 1.232712850854099873032510004122741520404815673828125p1 < 1.28015505488062419914285783306695520877838134765625p-40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000000 #b0011101110010011000100011100001111000110111111000010)))
(assert (= y (fp #b0 #b01111010111 #b0100011110111000001111011101111010000101011110000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
