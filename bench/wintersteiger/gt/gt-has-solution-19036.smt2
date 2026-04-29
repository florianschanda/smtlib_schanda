(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0342441852915162936454862574464641511440277099609375p161 {- 154222100118479 161 (-3.0231e+048)}
; Y = 1.522321957376976175879690345027483999729156494140625p-295 {+ 2352328972610378 -295 (2.39143e-089)}
; -1.0342441852915162936454862574464641511440277099609375p161 > 1.522321957376976175879690345027483999729156494140625p-295 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100000 #b0000100011000100001110100001011111100111101111001111)))
(assert (= y (fp #b0 #b01011011000 #b1000010110110110111001000100110011101010101101001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
