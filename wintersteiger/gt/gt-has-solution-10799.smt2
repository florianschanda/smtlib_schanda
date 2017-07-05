(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4987083272473515904721352853812277317047119140625p785 {- 2245982636757736 785 (-3.04975e+236)}
; Y = -1.4214234115205659492175982450135052204132080078125p896 {- 1897922319089224 896 (-7.5093e+269)}
; -1.4987083272473515904721352853812277317047119140625p785 > -1.4214234115205659492175982450135052204132080078125p896 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010000 #b0111111110101011010110010101001111000101001011101000)))
(assert (= y (fp #b1 #b11101111111 #b0110101111100010011001111001101000111111111001001000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
