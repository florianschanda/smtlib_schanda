(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.793105642442313740758663698215968906879425048828125p-354 {- 3571830275768642 -354 (-4.88638e-107)}
; Y = -0.39529556978834445857273749425075948238372802734375p-1022 {- 1780252980799996 -1023 (-8.79562e-309)}
; -1.793105642442313740758663698215968906879425048828125p-354 > -0.39529556978834445857273749425075948238372802734375p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011101 #b1100101100001000111110001010110010010000000101000010)))
(assert (= y (fp #b1 #b00000000000 #b0110010100110010000101110010100001111110100111111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
