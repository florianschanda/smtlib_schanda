(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.49359528582305234323257536743767559528350830078125p624 {- 2222955545304532 624 (-1.0398e+188)}
; Y = -1.6348661086170312994880760015803389251232147216796875p-532 {- 2859182770197819 -532 (-1.16285e-160)}
; -1.49359528582305234323257536743767559528350830078125p624 < -1.6348661086170312994880760015803389251232147216796875p-532 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101111 #b0111111001011100010000101011101000010001110111010100)))
(assert (= y (fp #b1 #b00111101011 #b1010001010000110100101011101010111011001010100111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
