(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.422423830867786787024442674010060727596282958984375p-610 {- 1902427807288582 -610 (-3.34759e-184)}
; Y = -1.60061055683104225266788489534519612789154052734375p-675 {- 2704909479939068 -675 (-1.02103e-203)}
; -1.422423830867786787024442674010060727596282958984375p-610 > -1.60061055683104225266788489534519612789154052734375p-675 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011101 #b0110110000100011111101111101101010100000110100000110)))
(assert (= y (fp #b1 #b00101011100 #b1001100111000001100111010000101100111000101111111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
