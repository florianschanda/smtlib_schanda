(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6095356368326954044079002414946444332599639892578125p693 {- 2745104466908765 693 (-6.61436e+208)}
; Y = 1.5994079621441283922678167073172517120838165283203125p237 {+ 2699493474955205 237 (3.53239e+071)}
; -1.6095356368326954044079002414946444332599639892578125p693 = 1.5994079621441283922678167073172517120838165283203125p237 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010110100 #b1001110000001010100001110000100111110001011001011101)))
(assert (= y (fp #b0 #b10011101100 #b1001100101110010110011001101101001011110111111000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
