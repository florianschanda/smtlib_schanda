(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8667461351994687479560752763063646852970123291015625p64 {- 3903477571509145 64 (-3.44354e+019)}
; Y = -1.0801247573077492614146422056364826858043670654296875p37 {- 360849827154331 37 (-1.48451e+011)}
; -1.8667461351994687479560752763063646852970123291015625p64 = -1.0801247573077492614146422056364826858043670654296875p37 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111111 #b1101110111100011000100110010000010011101101110011001)))
(assert (= y (fp #b1 #b10000100100 #b0001010010000011000011100101110000111100100110011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
