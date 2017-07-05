(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2217196988658314271702920450479723513126373291015625p967 {- 998536753192857 967 (-1.52397e+291)}
; -1.2217196988658314271702920450479723513126373291015625p967 | == 1.2217196988658314271702920450479723513126373291015625p967
; [HW: 1.2217196988658314271702920450479723513126373291015625p967] 

; mpf : + 998536753192857 967
; mpfd: + 998536753192857 967 (1.52397e+291) class: Pos. norm. non-zero
; hwf : + 998536753192857 967 (1.52397e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000110 #b0011100011000010100111110100011110000001111110011001)))
(assert (= r (fp #b0 #b11111000110 #b0011100011000010100111110100011110000001111110011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
