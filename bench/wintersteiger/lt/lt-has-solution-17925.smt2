(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6597510618868513976309486679383553564548492431640625p-902 {+ 2971254636470913 -902 (4.90893e-272)}
; Y = -1.7668724384480913869310825248248875141143798828125p150 {- 3453686428035528 150 (-2.52176e+045)}
; 1.6597510618868513976309486679383553564548492431640625p-902 < -1.7668724384480913869310825248248875141143798828125p150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111001 #b1010100011100101011100100001001001001110001010000001)))
(assert (= y (fp #b1 #b10010010101 #b1100010001010001110000001000101101010110100111001000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
