(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0465145213584203798262706186505965888500213623046875p-418 {- 209482781057099 -418 (-1.54599e-126)}
; Y = 1.2648889179751574562970972692710347473621368408203125p-196 {+ 1192953632287493 -196 (1.25943e-059)}
; -1.0465145213584203798262706186505965888500213623046875p-418 > 1.2648889179751574562970972692710347473621368408203125p-196 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011101 #b0000101111101000011000000010110000000110000001001011)))
(assert (= y (fp #b0 #b01100111011 #b0100001111001111110000101001011111000110101100000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
