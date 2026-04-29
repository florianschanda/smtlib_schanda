(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.053758121455955265588499969453550875186920166015625p387 {+ 242105055757178 387 (3.32161e+116)}
; Y = 1.9976995030814350684522651135921478271484375p-998 {+ 4493239110305280 -998 (7.45752e-301)}
; 1.053758121455955265588499969453550875186920166015625p387 < 1.9976995030814350684522651135921478271484375p-998 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000010 #b0000110111000011000101111001110110001100001101111010)))
(assert (= y (fp #b0 #b00000011001 #b1111111101101001001111000001000011111000011000000000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
