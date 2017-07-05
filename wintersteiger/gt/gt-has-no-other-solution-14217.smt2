(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1206955749397213839557707615313120186328887939453125p-78 {- 543564546323797 -78 (-3.70807e-024)}
; Y = -1.855453440237197160200821599573828279972076416015625p-740 {- 3852619794685050 -740 (-3.20814e-223)}
; -1.1206955749397213839557707615313120186328887939453125p-78 > -1.855453440237197160200821599573828279972076416015625p-740 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110001 #b0001111011100101111001111011101100100011010101010101)))
(assert (= y (fp #b1 #b00100011011 #b1101101011111110111111110010010100010001110001111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
