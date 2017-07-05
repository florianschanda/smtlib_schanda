(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.415826255229974517391156041412614285945892333984375p543 {- 1872714968104582 543 (-4.0766e+163)}
; Y = -1.8014199934300176852985941877705045044422149658203125p102 {- 3609274783778693 102 (-9.13428e+030)}
; -1.415826255229974517391156041412614285945892333984375p543 < -1.8014199934300176852985941877705045044422149658203125p102 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000011110 #b0110101001110011100101101110011100000111111010000110)))
(assert (= y (fp #b1 #b10001100101 #b1100110100101001110111000101011000100100011110000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
