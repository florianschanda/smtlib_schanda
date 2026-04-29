(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.21059320247623958266558474861085414886474609375p144 {- 948427468198752 144 (-2.69971e+043)}
; Y = -1.7551824947190490799897588658495806157588958740234375p882 {- 3401039601813431 882 (-5.65951e+265)}
; -1.21059320247623958266558474861085414886474609375p144 > -1.7551824947190490799897588658495806157588958740234375p882 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001111 #b0011010111101001011011111010010101100101001101100000)))
(assert (= y (fp #b1 #b11101110001 #b1100000101010011101000111101010101010100011110110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
