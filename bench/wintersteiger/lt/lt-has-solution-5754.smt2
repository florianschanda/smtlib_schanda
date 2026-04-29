(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4342894151719687290125193612766452133655548095703125p-1008 {+ 1955865648339429 -1008 (5.22879e-304)}
; Y = 1.442788325832607743137714351178146898746490478515625p306 {+ 1994141339223738 306 (1.88097e+092)}
; 1.4342894151719687290125193612766452133655548095703125p-1008 < 1.442788325832607743137714351178146898746490478515625p306 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001111 #b0110111100101101100101110101001100101001100111100101)))
(assert (= y (fp #b0 #b10100110001 #b0111000101011010100100110110001010000000011010111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
