(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.927235250438695590702309345942921936511993408203125p-354 {+ 4175896328360498 -354 (5.2519e-107)}
; Y = -1.4868684615550213923285127748386003077030181884765625p909 {- 2192660622037641 909 (-6.43485e+273)}
; 1.927235250438695590702309345942921936511993408203125p-354 = -1.4868684615550213923285127748386003077030181884765625p909 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010011101 #b1110110101011111010010100001010001010101001000110010)))
(assert (= y (fp #b1 #b11110001100 #b0111110010100011011010010101011111010101001010001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
