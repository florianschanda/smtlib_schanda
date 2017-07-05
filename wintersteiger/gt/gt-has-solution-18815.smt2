(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7229493688888479763221539542428217828273773193359375p-587 {- 3255874508335551 -587 (-3.40146e-177)}
; Y = -1.489229382131620038620667401119135320186614990234375p-344 {- 2203293263066662 -344 (-4.15569e-104)}
; -1.7229493688888479763221539542428217828273773193359375p-587 > -1.489229382131620038620667401119135320186614990234375p-344 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110110100 #b1011100100010011001101011011100000001010100110111111)))
(assert (= y (fp #b1 #b01010100111 #b0111110100111110001000110000010001111111011000100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
