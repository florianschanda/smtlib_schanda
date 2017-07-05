(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1196846448021713360532203296315856277942657470703125p-630 {- 539011721733029 -630 (-2.51303e-190)}
; Y = -1.1776820305486570550357328102109022438526153564453125p-463 {- 800208726569365 -463 (-4.9447e-140)}
; -1.1196846448021713360532203296315856277942657470703125p-630 < -1.1776820305486570550357328102109022438526153564453125p-463 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110001001 #b0001111010100011101001110010001101000010001110100101)))
(assert (= y (fp #b1 #b01000110000 #b0010110101111100100100011100111001001011000110010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
