(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.97232738586322131624228859436698257923126220703125p-155 {+ 4378973252655732 -155 (4.31847e-047)}
; Y = -1.172713211336374516946534640737809240818023681640625p-522 {- 777831154216458 -522 (-8.5415e-158)}
; 1.97232738586322131624228859436698257923126220703125p-155 = -1.172713211336374516946534640737809240818023681640625p-522 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100100 #b1111100011101010011100101001001101001001101001110100)))
(assert (= y (fp #b1 #b00111110101 #b0010110000110110111011101101101001000110111000001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
