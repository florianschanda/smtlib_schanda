(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.218146470796050540030819320236332714557647705078125p-26 {- 982444364589282 -26 (-1.81518e-008)}
; Y = -1.7998503411225079684498950882698409259319305419921875p627 {- 3602205698231491 627 (-1.00241e+189)}
; -1.218146470796050540030819320236332714557647705078125p-26 > -1.7998503411225079684498950882698409259319305419921875p627 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100101 #b0011011111011000011100100111010111001110100011100010)))
(assert (= y (fp #b1 #b11001110010 #b1100110011000010111111011111000011010000110011000011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
