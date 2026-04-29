(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.666950678180302514164168314891867339611053466796875p-55 {- 3003678825727310 -55 (-4.62672e-017)}
; Y = 1.7613870968810994011022330596460960805416107177734375p-493 {+ 3428982645798423 -493 (6.88758e-149)}
; -1.666950678180302514164168314891867339611053466796875p-55 < 1.7613870968810994011022330596460960805416107177734375p-493 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001000 #b1010101010111101010001111001011011010100010101001110)))
(assert (= y (fp #b0 #b01000010010 #b1100001011101010010000111100100010110011011000010111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
