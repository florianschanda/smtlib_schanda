(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1164315648456513141439927494502626359462738037109375p386 {- 524361152053039 386 (-1.75959e+116)}
; Y = 1.7593438952906990113689289501053281128406524658203125p913 {+ 3419780883877253 913 (1.21825e+275)}
; -1.1164315648456513141439927494502626359462738037109375p386 > 1.7593438952906990113689289501053281128406524658203125p913 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000001 #b0001110111001110011101011000001100111011111100101111)))
(assert (= y (fp #b0 #b11110010000 #b1100001001100100010111001000110010110000110110000101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
