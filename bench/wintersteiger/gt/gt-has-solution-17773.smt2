(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.239610054281018225452726255753077566623687744140625p163 {- 1079107751174218 163 (-1.44935e+049)}
; Y = 1.393695649704716377215163447544910013675689697265625p316 {+ 1773047581307546 316 (1.86057e+095)}
; -1.239610054281018225452726255753077566623687744140625p163 > 1.393695649704716377215163447544910013675689697265625p316 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100010 #b0011110101010111000101011010001011101110000001001010)))
(assert (= y (fp #b0 #b10100111011 #b0110010011001001001111001111010000001111001010011010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
