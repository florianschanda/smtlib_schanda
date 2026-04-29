(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.26818621631680006345277433865703642368316650390625p-2 {- 1207803343870244 -2 (-0.317047)}
; -zero > -1.26818621631680006345277433865703642368316650390625p-2 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01111111101 #b0100010010100111110110100001010001010001100100100100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
