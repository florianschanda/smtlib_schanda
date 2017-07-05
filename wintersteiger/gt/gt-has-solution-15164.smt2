(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5730328453028878943342760976520366966724395751953125p349 {- 2580710508577141 349 (-1.80387e+105)}
; Y = -1.61345445179680435643376767984591424465179443359375p-892 {- 2762753240520860 -892 (-4.88653e-269)}
; -1.5730328453028878943342760976520366966724395751953125p349 > -1.61345445179680435643376767984591424465179443359375p-892 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011100 #b1001001010110010010001111101001000011100000101110101)))
(assert (= y (fp #b1 #b00010000011 #b1001110100001011010110011101100000001101100010011100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
