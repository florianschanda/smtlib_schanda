(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.162993255024151739718263343092985451221466064453125p13 {- 734056362590674 13 (-9527.24)}
; Y = -1.353606048034305953109424081048928201198577880859375p-746 {- 1592500066163254 -746 (-3.65692e-225)}
; -1.162993255024151739718263343092985451221466064453125p13 < -1.353606048034305953109424081048928201198577880859375p-746 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001100 #b0010100110111001111011010000101111001100000111010010)))
(assert (= y (fp #b1 #b00100010101 #b0101101010000101111011010000101111111001101000110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
