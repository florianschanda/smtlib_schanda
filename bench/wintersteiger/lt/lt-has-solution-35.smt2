(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8455549135305469032886094282730482518672943115234375p-390 {+ 3808040793497463 -390 (7.31861e-118)}
; Y = -1.7495881956160916903542101863422431051731109619140625p500 {- 3375845118457953 500 (-5.72709e+150)}
; 1.8455549135305469032886094282730482518672943115234375p-390 < -1.7495881956160916903542101863422431051731109619140625p500 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111001 #b1101100001110110010010010110110010010101111101110111)))
(assert (= y (fp #b1 #b10111110011 #b1011111111100101000000110001000110100011100001100001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
