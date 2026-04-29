(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8869632514773837517196852786582894623279571533203125p900 {+ 3994527368844869 900 (1.595e+271)}
; Y = 1.662323194687874039487951449700631201267242431640625p674 {+ 2982838492795146 674 (1.30296e+203)}
; 1.8869632514773837517196852786582894623279571533203125p900 < 1.662323194687874039487951449700631201267242431640625p674 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000011 #b1110001100010000000001100000110111011001011001000101)))
(assert (= y (fp #b0 #b11010100001 #b1010100110001110000000110100110010010001000100001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
