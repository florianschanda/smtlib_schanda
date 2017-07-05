(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1118332888627906473999473746516741812229156494140625p617 {- 503652358050081 617 (-6.0471e+185)}
; Y = 1.075472978125221690248736194917000830173492431640625p-332 {+ 339900076161290 -332 (1.22925e-100)}
; -1.1118332888627906473999473746516741812229156494140625p617 = 1.075472978125221690248736194917000830173492431640625p-332 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101000 #b0001110010100001000110110011111001000101000100100001)))
(assert (= y (fp #b0 #b01010110011 #b0001001101010010001100100111010011000111100100001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
